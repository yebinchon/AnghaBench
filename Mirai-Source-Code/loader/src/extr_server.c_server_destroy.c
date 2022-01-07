
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server {struct server* workers; struct server* bind_addrs; } ;


 int free (struct server*) ;

void server_destroy(struct server *srv)
{
    if (srv == ((void*)0))
        return;
    if (srv->bind_addrs != ((void*)0))
        free(srv->bind_addrs);
    if (srv->workers != ((void*)0))
        free(srv->workers);
    free(srv);
}
