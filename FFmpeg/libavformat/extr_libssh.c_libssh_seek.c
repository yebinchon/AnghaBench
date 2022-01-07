
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {int filesize; int file; } ;
typedef TYPE_2__ LIBSSHContext ;


 scalar_t__ AVERROR (int ) ;

 int AV_LOG_ERROR ;
 int EINVAL ;
 int EIO ;



 int av_log (TYPE_1__*,int ,char*) ;
 scalar_t__ sftp_seek64 (int ,scalar_t__) ;
 scalar_t__ sftp_tell64 (int ) ;

__attribute__((used)) static int64_t libssh_seek(URLContext *h, int64_t pos, int whence)
{
    LIBSSHContext *libssh = h->priv_data;
    int64_t newpos;

    if (libssh->filesize == -1 && (whence == 131 || whence == 129)) {
        av_log(h, AV_LOG_ERROR, "Error during seeking.\n");
        return AVERROR(EIO);
    }

    switch(whence) {
    case 131:
        return libssh->filesize;
    case 128:
        newpos = pos;
        break;
    case 130:
        newpos = sftp_tell64(libssh->file) + pos;
        break;
    case 129:
        newpos = libssh->filesize + pos;
        break;
    default:
        return AVERROR(EINVAL);
    }

    if (newpos < 0) {
        av_log(h, AV_LOG_ERROR, "Seeking to nagative position.\n");
        return AVERROR(EINVAL);
    }

    if (sftp_seek64(libssh->file, newpos)) {
        av_log(h, AV_LOG_ERROR, "Error during seeking.\n");
        return AVERROR(EIO);
    }

    return newpos;
}
