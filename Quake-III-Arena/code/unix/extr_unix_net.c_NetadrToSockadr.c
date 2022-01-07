
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_in {int sin_port; int sin_addr; void* sin_family; } ;
struct TYPE_3__ {scalar_t__ type; int port; int ip; } ;
typedef TYPE_1__ netadr_t ;


 void* AF_INET ;
 scalar_t__ NA_BROADCAST ;
 scalar_t__ NA_IP ;
 int memset (struct sockaddr_in*,int ,int) ;

void NetadrToSockadr (netadr_t *a, struct sockaddr_in *s)
{
 memset (s, 0, sizeof(*s));

 if (a->type == NA_BROADCAST)
 {
  s->sin_family = AF_INET;

  s->sin_port = a->port;
  *(int *)&s->sin_addr = -1;
 }
 else if (a->type == NA_IP)
 {
  s->sin_family = AF_INET;

  *(int *)&s->sin_addr = *(int *)&a->ip;
  s->sin_port = a->port;
 }
}
