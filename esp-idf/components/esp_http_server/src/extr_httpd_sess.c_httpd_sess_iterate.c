
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_open_sockets; } ;
struct httpd_data {TYPE_2__* hd_sd; TYPE_1__ config; } ;
struct TYPE_4__ {int fd; } ;



int httpd_sess_iterate(struct httpd_data *hd, int start_fd)
{
    int start_index = 0;
    int i;

    if (start_fd != -1) {

        for (i = 0; i < hd->config.max_open_sockets; i++) {
            if (hd->hd_sd[i].fd == start_fd) {
                start_index = i + 1;
                break;
            }
        }
    }

    for (i = start_index; i < hd->config.max_open_sockets; i++) {
        if (hd->hd_sd[i].fd != -1) {
            return hd->hd_sd[i].fd;
        }
    }
    return -1;
}
