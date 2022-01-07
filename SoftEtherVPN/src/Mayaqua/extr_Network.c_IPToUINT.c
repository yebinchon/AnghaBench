
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_3__ {int * addr; } ;
typedef TYPE_1__ IP ;



UINT IPToUINT(IP *ip)
{
 UCHAR *b;
 UINT i, value = 0;

 if (ip == ((void*)0))
 {
  return 0;
 }

 b = (UCHAR *)&value;
 for (i = 0;i < 4;i++)
 {
  b[i] = ip->addr[i];
 }

 return value;
}
