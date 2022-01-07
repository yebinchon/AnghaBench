
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef scalar_t__ UINT ;


 int KeBugCheckEx (int,int ,int ,int ,int ) ;

void NeoNdisCrash2(UINT a, UINT b, UINT c, UINT d)
{
 KeBugCheckEx(0x00000061, (ULONG_PTR)a, (ULONG_PTR)b, (ULONG_PTR)c, (ULONG_PTR)d);
}
