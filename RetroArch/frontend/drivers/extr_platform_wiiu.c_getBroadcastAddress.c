
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ACResult ;
typedef int ACIpAddress ;


 scalar_t__ ACGetAssignedAddress (int*) ;
 scalar_t__ ACGetAssignedSubnet (int*) ;

int getBroadcastAddress(ACIpAddress *broadcast)
{
   ACIpAddress myIp, mySubnet;
   ACResult result;

   if(broadcast == ((void*)0))
      return -1;

   result = ACGetAssignedAddress(&myIp);
   if(result < 0)
      return -1;
   result = ACGetAssignedSubnet(&mySubnet);
   if(result < 0)
      return -1;

   *broadcast = myIp | (~mySubnet);
   return 0;
}
