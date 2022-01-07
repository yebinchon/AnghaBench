
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_9__ {scalar_t__ state; int position; int filesize; scalar_t__ conn_data; } ;
typedef TYPE_2__ FTPContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 scalar_t__ DISCONNECTED ;
 int EIO ;
 int FFMAX (int ,int) ;
 scalar_t__ READY ;
 scalar_t__ UPLOADING ;
 int av_log (TYPE_1__*,int ,char*) ;
 int ff_dlog (TYPE_1__*,char*,int) ;
 int ffurl_write (scalar_t__,unsigned char const*,int) ;
 int ftp_connect_data_connection (TYPE_1__*) ;
 int ftp_store (TYPE_2__*) ;

__attribute__((used)) static int ftp_write(URLContext *h, const unsigned char *buf, int size)
{
    int err;
    FTPContext *s = h->priv_data;
    int written;

    ff_dlog(h, "ftp protocol write %d bytes\n", size);

    if (s->state == DISCONNECTED) {
        if ((err = ftp_connect_data_connection(h)) < 0)
            return err;
    }
    if (s->state == READY) {
        if ((err = ftp_store(s)) < 0)
            return err;
    }
    if (s->conn_data && s->state == UPLOADING) {
        written = ffurl_write(s->conn_data, buf, size);
        if (written > 0) {
            s->position += written;
            s->filesize = FFMAX(s->filesize, s->position);
        }
        return written;
    }

    av_log(h, AV_LOG_ERROR, "FTP write failed\n");
    return AVERROR(EIO);
}
