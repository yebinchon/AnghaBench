
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_open_sockets; } ;
struct httpd_data {TYPE_2__* hd_sd; TYPE_1__ config; } ;
struct TYPE_4__ {int fd; int * ctx; } ;



void httpd_sess_init(struct httpd_data *hd)
{
    int i;
    for (i = 0; i < hd->config.max_open_sockets; i++) {
        hd->hd_sd[i].fd = -1;
        hd->hd_sd[i].ctx = ((void*)0);
    }
}
