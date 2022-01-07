
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;



__attribute__((used)) static int getBroadcastAddress(struct sockaddr_in *sa, struct sockaddr_in *addr, struct sockaddr_in *mask)
{
   if (!sa || !addr || !mask)
      return -1;

   sa->sin_addr.s_addr = addr->sin_addr.s_addr | (~mask->sin_addr.s_addr);
   return 0;
}
