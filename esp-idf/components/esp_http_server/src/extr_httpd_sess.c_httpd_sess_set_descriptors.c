
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_open_sockets; } ;
struct httpd_data {TYPE_2__* hd_sd; TYPE_1__ config; } ;
typedef int fd_set ;
struct TYPE_4__ {int fd; } ;


 int FD_SET (int,int *) ;

void httpd_sess_set_descriptors(struct httpd_data *hd,
                                fd_set *fdset, int *maxfd)
{
    int i;
    *maxfd = -1;
    for (i = 0; i < hd->config.max_open_sockets; i++) {
        if (hd->hd_sd[i].fd != -1) {
            FD_SET(hd->hd_sd[i].fd, fdset);
            if (hd->hd_sd[i].fd > *maxfd) {
                *maxfd = hd->hd_sd[i].fd;
            }
        }
    }
}
