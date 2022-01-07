
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct telnet_info {int dummy; } ;
struct server {scalar_t__ max_open; int curr_open; } ;


 scalar_t__ ATOMIC_GET (int *) ;
 int ATOMIC_INC (int *) ;
 int printf (char*) ;
 int server_telnet_probe (struct server*,struct telnet_info*) ;
 int sleep (int) ;

void server_queue_telnet(struct server *srv, struct telnet_info *info)
{
    while (ATOMIC_GET(&srv->curr_open) >= srv->max_open)
    {
        sleep(1);
    }
    ATOMIC_INC(&srv->curr_open);

    if (srv == ((void*)0))
        printf("srv == NULL 3\n");

    server_telnet_probe(srv, info);
}
