
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef scalar_t__ UINT ;


 int KeBugCheckEx (scalar_t__,int ,int ,int ,int ) ;

void Crush(UINT a, UINT b, UINT c, UINT d)
{
 KeBugCheckEx(0x3f000000 + a, (ULONG_PTR)a, (ULONG_PTR)b, (ULONG_PTR)c, (ULONG_PTR)d);
}
