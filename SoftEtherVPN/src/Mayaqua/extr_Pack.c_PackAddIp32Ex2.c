
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PACK ;
typedef int IP ;


 int PackAddIpEx2 (int *,char*,int *,int ,int ,int) ;
 int UINTToIP (int *,int ) ;

void PackAddIp32Ex2(PACK *p, char *name, UINT ip32, UINT index, UINT total, bool is_single)
{
 IP ip;

 if (p == ((void*)0) || name == ((void*)0))
 {
  return;
 }

 UINTToIP(&ip, ip32);

 PackAddIpEx2(p, name, &ip, index, total, is_single);
}
