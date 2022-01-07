
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
typedef int ACIpAddress ;


 int ACGetAssignedSubnet (int *) ;

__attribute__((used)) static int getAssignedSubnet(struct sockaddr_in *sa)
{
   ACIpAddress mask;
   int result;
   if (!sa)
      return -1;

   result = ACGetAssignedSubnet(&mask);
   if (result == 0)
      sa->sin_addr.s_addr = mask;

   return result;
}
