
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_6__ {int filename; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_7__ {int fd; } ;
typedef TYPE_2__ LIBSMBContext ;


 int AVERROR (int ) ;
 int O_WRONLY ;
 scalar_t__ S_ISDIR (int ) ;
 int errno ;
 int libsmbc_close (TYPE_1__*) ;
 int libsmbc_connect (TYPE_1__*) ;
 int smbc_close (int) ;
 scalar_t__ smbc_fstat (int,struct stat*) ;
 int smbc_open (int ,int ,int) ;
 scalar_t__ smbc_rmdir (int ) ;
 scalar_t__ smbc_unlink (int ) ;

__attribute__((used)) static int libsmbc_delete(URLContext *h)
{
    LIBSMBContext *libsmbc = h->priv_data;
    int ret;
    struct stat st;

    if ((ret = libsmbc_connect(h)) < 0)
        goto cleanup;

    if ((libsmbc->fd = smbc_open(h->filename, O_WRONLY, 0666)) < 0) {
        ret = AVERROR(errno);
        goto cleanup;
    }

    if (smbc_fstat(libsmbc->fd, &st) < 0) {
        ret = AVERROR(errno);
        goto cleanup;
    }

    smbc_close(libsmbc->fd);
    libsmbc->fd = -1;

    if (S_ISDIR(st.st_mode)) {
        if (smbc_rmdir(h->filename) < 0) {
            ret = AVERROR(errno);
            goto cleanup;
        }
    } else {
        if (smbc_unlink(h->filename) < 0) {
            ret = AVERROR(errno);
            goto cleanup;
        }
    }

    ret = 0;

cleanup:
    libsmbc_close(h);
    return ret;
}
