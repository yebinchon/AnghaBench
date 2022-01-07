
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_in {int sin_len; int sin_addr; int sin_family; int sin_port; } ;
struct TYPE_3__ {int server; int domain; int port; } ;
typedef TYPE_1__ socket_target_t ;


 int AF_INET ;
 int domain_get (int ) ;
 int inet_aton (int ) ;
 int inet_htons (int ) ;
 int inet_ptrton (int ,int ,int *) ;

void socket_set_target(void *data, socket_target_t *in_addr)
{
   struct sockaddr_in *out_target = (struct sockaddr_in*)data;

   out_target->sin_port = inet_htons(in_addr->port);
   out_target->sin_family = domain_get(in_addr->domain);







   inet_ptrton(AF_INET, in_addr->server, &out_target->sin_addr);


}
