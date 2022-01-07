
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_4__ {int * addr; } ;
typedef TYPE_1__ IP ;


 int ZeroIP4 (TYPE_1__*) ;

void UINTToIP(IP *ip, UINT value)
{
 UCHAR *b;
 UINT i;

 if (ip == ((void*)0))
 {
  return;
 }

 ZeroIP4(ip);

 b = (UCHAR *)&value;
 for (i = 0;i < 4;i++)
 {
  ip->addr[i] = b[i];
 }
}
