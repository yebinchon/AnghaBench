
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACK ;
typedef int IP ;


 int PackAddIpEx2 (int *,char*,int *,int ,int,int) ;

void PackAddIp(PACK *p, char *name, IP *ip)
{
 PackAddIpEx2(p, name, ip, 0, 1, 1);
}
