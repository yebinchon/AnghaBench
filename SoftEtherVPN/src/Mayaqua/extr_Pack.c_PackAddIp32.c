
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PACK ;


 int PackAddIp32Ex2 (int *,char*,int ,int ,int,int) ;

void PackAddIp32(PACK *p, char *name, UINT ip32)
{
 PackAddIp32Ex2(p, name, ip32, 0, 1, 1);
}
