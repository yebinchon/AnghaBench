
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int path ;
struct TYPE_7__ {int filename; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_8__ {int session; int sftp; int dir; } ;
typedef TYPE_2__ LIBSSHContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EIO ;
 int MAX_URL_SIZE ;
 int av_log (TYPE_2__*,int ,char*,int ) ;
 int libssh_close (TYPE_1__*) ;
 int libssh_connect (TYPE_1__*,int ,char*,int) ;
 int sftp_opendir (int ,char*) ;
 int ssh_get_error (int ) ;

__attribute__((used)) static int libssh_open_dir(URLContext *h)
{
    LIBSSHContext *libssh = h->priv_data;
    int ret;
    char path[MAX_URL_SIZE];

    if ((ret = libssh_connect(h, h->filename, path, sizeof(path))) < 0)
        goto fail;

    if (!(libssh->dir = sftp_opendir(libssh->sftp, path))) {
        av_log(libssh, AV_LOG_ERROR, "Error opening sftp dir: %s\n", ssh_get_error(libssh->session));
        ret = AVERROR(EIO);
        goto fail;
    }

    return 0;

  fail:
    libssh_close(h);
    return ret;
}
