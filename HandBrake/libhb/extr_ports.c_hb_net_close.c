
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int socket; } ;
typedef TYPE_1__ hb_net_t ;


 int close (int ) ;
 int free (TYPE_1__*) ;

void hb_net_close( hb_net_t ** _n )
{
    hb_net_t * n = (hb_net_t *) *_n;
    close( n->socket );
    free( n );
    *_n = ((void*)0);
}
