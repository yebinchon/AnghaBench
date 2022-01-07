
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 size_t Rand32 () ;

char *GetRandHostNameForGetMyPrivateIP()
{
 char *hosts[] =
 {
  "www.microsoft.com",
  "www.yahoo.com",
  "www.bing.com",
 };
 UINT num_hosts = 3;

 return hosts[Rand32() % num_hosts];
}
