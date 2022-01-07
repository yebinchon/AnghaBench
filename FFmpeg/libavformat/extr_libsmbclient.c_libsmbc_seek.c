
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {int filesize; int fd; } ;
typedef TYPE_2__ LIBSMBContext ;


 int AVERROR (int) ;
 int AVSEEK_SIZE ;
 int AV_LOG_ERROR ;
 int EIO ;
 int av_log (TYPE_1__*,int ,char*,...) ;
 int errno ;
 int smbc_lseek (int ,int,int) ;
 int strerror (int) ;

__attribute__((used)) static int64_t libsmbc_seek(URLContext *h, int64_t pos, int whence)
{
    LIBSMBContext *libsmbc = h->priv_data;
    int64_t newpos;

    if (whence == AVSEEK_SIZE) {
        if (libsmbc->filesize == -1) {
            av_log(h, AV_LOG_ERROR, "Error during seeking: filesize is unknown.\n");
            return AVERROR(EIO);
        } else
            return libsmbc->filesize;
    }

    if ((newpos = smbc_lseek(libsmbc->fd, pos, whence)) < 0) {
        int err = errno;
        av_log(h, AV_LOG_ERROR, "Error during seeking: %s\n", strerror(err));
        return AVERROR(err);
    }

    return newpos;
}
