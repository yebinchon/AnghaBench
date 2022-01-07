
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock_db {int fd; } ;
struct TYPE_4__ {int max_open_sockets; } ;
struct TYPE_3__ {struct sock_db* sd; } ;
struct httpd_data {struct sock_db* hd_sd; TYPE_2__ config; TYPE_1__ hd_req_aux; } ;



struct sock_db *httpd_sess_get(struct httpd_data *hd, int sockfd)
{
    if (hd == ((void*)0)) {
        return ((void*)0);
    }



    if ((hd->hd_req_aux.sd) && (hd->hd_req_aux.sd->fd == sockfd)) {


        return hd->hd_req_aux.sd;
    }

    int i;
    for (i = 0; i < hd->config.max_open_sockets; i++) {
        if (hd->hd_sd[i].fd == sockfd) {
            return &hd->hd_sd[i];
        }
    }
    return ((void*)0);
}
