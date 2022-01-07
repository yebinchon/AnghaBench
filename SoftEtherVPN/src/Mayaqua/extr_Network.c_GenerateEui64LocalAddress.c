
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_4__ {int* ipv6_addr; } ;
typedef TYPE_1__ IP ;


 int Copy (int*,int *,int) ;
 int GenerateEui64Address6 (int *,int *) ;
 int ZeroIP6 (TYPE_1__*) ;

void GenerateEui64LocalAddress(IP *a, UCHAR *mac)
{
 UCHAR tmp[8];

 if (a == ((void*)0) || mac == ((void*)0))
 {
  return;
 }

 GenerateEui64Address6(tmp, mac);

 ZeroIP6(a);
 a->ipv6_addr[0] = 0xfe;
 a->ipv6_addr[1] = 0x80;

 Copy(&a->ipv6_addr[8], tmp, 8);
}
