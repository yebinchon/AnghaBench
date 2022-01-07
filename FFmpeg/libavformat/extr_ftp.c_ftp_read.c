
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef void* int64_t ;
struct TYPE_10__ {int is_streamed; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_11__ {scalar_t__ state; scalar_t__ position; scalar_t__ filesize; scalar_t__ conn_data; } ;
typedef TYPE_2__ FTPContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 scalar_t__ DISCONNECTED ;
 scalar_t__ DOWNLOADING ;
 int EIO ;
 scalar_t__ READY ;
 int SEEK_SET ;
 int av_log (TYPE_1__*,int ,char*) ;
 int ff_dlog (TYPE_1__*,char*,int) ;
 int ffurl_read (scalar_t__,unsigned char*,int) ;
 int ftp_abort (TYPE_1__*) ;
 int ftp_connect_data_connection (TYPE_1__*) ;
 int ftp_retrieve (TYPE_2__*) ;
 int ftp_seek (TYPE_1__*,void*,int ) ;

__attribute__((used)) static int ftp_read(URLContext *h, unsigned char *buf, int size)
{
    FTPContext *s = h->priv_data;
    int read, err, retry_done = 0;

    ff_dlog(h, "ftp protocol read %d bytes\n", size);
  retry:
    if (s->state == DISCONNECTED) {

        if (s->position >= s->filesize)
            return AVERROR_EOF;
        if ((err = ftp_connect_data_connection(h)) < 0)
            return err;
    }
    if (s->state == READY) {
        if (s->position >= s->filesize)
            return AVERROR_EOF;
        if ((err = ftp_retrieve(s)) < 0)
            return err;
    }
    if (s->conn_data && s->state == DOWNLOADING) {
        read = ffurl_read(s->conn_data, buf, size);
        if (read >= 0) {
            s->position += read;
            if (s->position >= s->filesize) {


                int64_t pos = s->position;
                if (ftp_abort(h) < 0) {
                    s->position = pos;
                    return AVERROR(EIO);
                }
                s->position = pos;
            }
        }
        if (read <= 0 && s->position < s->filesize && !h->is_streamed) {

            int64_t pos = s->position;
            av_log(h, AV_LOG_INFO, "Reconnect to FTP server.\n");
            if ((err = ftp_abort(h)) < 0)
                return err;
            if ((err = ftp_seek(h, pos, SEEK_SET)) < 0) {
                av_log(h, AV_LOG_ERROR, "Position cannot be restored.\n");
                return err;
            }
            if (!retry_done) {
                retry_done = 1;
                goto retry;
            }
        }
        return read;
    }

    av_log(h, AV_LOG_DEBUG, "FTP read failed\n");
    return AVERROR(EIO);
}
