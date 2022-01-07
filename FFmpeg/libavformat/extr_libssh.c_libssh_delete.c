
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* sftp_attributes ;
typedef int path ;
struct TYPE_10__ {int filename; TYPE_3__* priv_data; } ;
typedef TYPE_2__ URLContext ;
struct TYPE_11__ {int sftp; } ;
struct TYPE_9__ {scalar_t__ type; } ;
typedef TYPE_3__ LIBSSHContext ;


 int AVERROR (int ) ;
 int MAX_URL_SIZE ;
 scalar_t__ SSH_FILEXFER_TYPE_DIRECTORY ;
 int libssh_close (TYPE_2__*) ;
 int libssh_connect (TYPE_2__*,int ,char*,int) ;
 int sftp_attributes_free (TYPE_1__*) ;
 int sftp_get_error (int ) ;
 scalar_t__ sftp_rmdir (int ,char*) ;
 TYPE_1__* sftp_stat (int ,char*) ;
 scalar_t__ sftp_unlink (int ,char*) ;

__attribute__((used)) static int libssh_delete(URLContext *h)
{
    int ret;
    LIBSSHContext *libssh = h->priv_data;
    sftp_attributes attr = ((void*)0);
    char path[MAX_URL_SIZE];

    if ((ret = libssh_connect(h, h->filename, path, sizeof(path))) < 0)
        goto cleanup;

    if (!(attr = sftp_stat(libssh->sftp, path))) {
        ret = AVERROR(sftp_get_error(libssh->sftp));
        goto cleanup;
    }

    if (attr->type == SSH_FILEXFER_TYPE_DIRECTORY) {
        if (sftp_rmdir(libssh->sftp, path) < 0) {
            ret = AVERROR(sftp_get_error(libssh->sftp));
            goto cleanup;
        }
    } else {
        if (sftp_unlink(libssh->sftp, path) < 0) {
            ret = AVERROR(sftp_get_error(libssh->sftp));
            goto cleanup;
        }
    }

    ret = 0;

cleanup:
    if (attr)
        sftp_attributes_free(attr);
    libssh_close(h);
    return ret;
}
