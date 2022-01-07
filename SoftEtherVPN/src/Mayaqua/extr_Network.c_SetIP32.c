
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ip ;
typedef int UINT ;
typedef int UCHAR ;
typedef int IP ;


 int IPToUINT (int *) ;
 int SetIP (int *,int ,int ,int ,int ) ;
 int Zero (int *,int) ;

UINT SetIP32(UCHAR a1, UCHAR a2, UCHAR a3, UCHAR a4)
{
 IP ip;

 Zero(&ip, sizeof(ip));
 SetIP(&ip, a1, a2, a3, a4);

 return IPToUINT(&ip);
}
