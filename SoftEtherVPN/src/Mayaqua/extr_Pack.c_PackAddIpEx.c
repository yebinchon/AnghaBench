
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PACK ;
typedef int IP ;


 int PackAddIpEx2 (int *,char*,int *,int ,int ,int) ;

void PackAddIpEx(PACK *p, char *name, IP *ip, UINT index, UINT total)
{
 PackAddIpEx2(p, name, ip, index, total, 0);
}
