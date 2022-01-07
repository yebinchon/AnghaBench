
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* socket_t ;
struct TYPE_4__ {struct TYPE_4__* so_head; } ;



socket_t
sock_getlistener(socket_t sock)
{
 return (sock->so_head);
}
