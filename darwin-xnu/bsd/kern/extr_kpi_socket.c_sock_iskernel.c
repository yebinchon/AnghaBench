
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* socket_t ;
struct TYPE_3__ {scalar_t__ last_pid; } ;



int
sock_iskernel(socket_t so)
{
 return (so && so->last_pid == 0);
}
