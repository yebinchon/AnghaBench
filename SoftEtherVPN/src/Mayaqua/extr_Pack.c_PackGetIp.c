
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACK ;
typedef int IP ;


 int PackGetIpEx (int *,char*,int *,int ) ;

bool PackGetIp(PACK *p, char *name, IP *ip)
{
 return PackGetIpEx(p, name, ip, 0);
}
