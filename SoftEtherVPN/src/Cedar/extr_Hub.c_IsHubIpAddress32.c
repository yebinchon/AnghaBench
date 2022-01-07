
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 int IsHubIpAddress (int *) ;
 int UINTToIP (int *,int ) ;

bool IsHubIpAddress32(UINT ip32)
{
 IP ip;

 UINTToIP(&ip, ip32);

 return IsHubIpAddress(&ip);
}
