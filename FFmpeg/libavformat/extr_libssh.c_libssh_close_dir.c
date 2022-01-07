
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {int * dir; } ;
typedef TYPE_2__ LIBSSHContext ;


 int libssh_close (TYPE_1__*) ;
 int sftp_closedir (int *) ;

__attribute__((used)) static int libssh_close_dir(URLContext *h)
{
    LIBSSHContext *libssh = h->priv_data;
    if (libssh->dir)
        sftp_closedir(libssh->dir);
    libssh->dir = ((void*)0);
    libssh_close(h);
    return 0;
}
