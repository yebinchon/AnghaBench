
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_in {int sin_port; int sin_addr; } ;
struct TYPE_3__ {int type; int port; int ip; } ;
typedef TYPE_1__ netadr_t ;


 int NA_IP ;

void SockadrToNetadr (struct sockaddr_in *s, netadr_t *a)
{
 *(int *)&a->ip = *(int *)&s->sin_addr;
 a->port = s->sin_port;
 a->type = NA_IP;
}
