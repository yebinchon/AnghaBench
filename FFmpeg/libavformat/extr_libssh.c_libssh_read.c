
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {int file; } ;
typedef TYPE_2__ LIBSSHContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_LOG_ERROR ;
 int EIO ;
 int av_log (TYPE_2__*,int ,char*) ;
 int sftp_read (int ,unsigned char*,int) ;

__attribute__((used)) static int libssh_read(URLContext *h, unsigned char *buf, int size)
{
    LIBSSHContext *libssh = h->priv_data;
    int bytes_read;

    if ((bytes_read = sftp_read(libssh->file, buf, size)) < 0) {
        av_log(libssh, AV_LOG_ERROR, "Read error.\n");
        return AVERROR(EIO);
    }
    return bytes_read ? bytes_read : AVERROR_EOF;
}
