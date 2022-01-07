
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int socket; } ;
typedef TYPE_1__ hb_net_t ;


 int send (int ,char*,int ,int ) ;
 int strlen (char*) ;

int hb_net_send( hb_net_t * n, char * buffer )
{
    return send( n->socket, buffer, strlen( buffer ), 0 );
}
