
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
typedef int ACIpAddress ;


 int ACGetAssignedAddress (int *) ;

__attribute__((used)) static int getAssignedAddress(struct sockaddr_in *sa)
{
   ACIpAddress addr;
   int result;
   if (!sa)
      return -1;
   result = ACGetAssignedAddress(&addr);
   if (result == 0)
      sa->sin_addr.s_addr = addr;

   return result;
}
