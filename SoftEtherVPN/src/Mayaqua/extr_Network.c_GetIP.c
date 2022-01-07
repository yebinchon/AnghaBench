
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 int GetIPEx (int *,char*,int) ;

bool GetIP(IP *ip, char *hostname)
{
 return GetIPEx(ip, hostname, 0);
}
