
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ voidp ;


 int Z_Free (scalar_t__) ;

void zcfree (voidp opaque, voidp ptr)
{
    Z_Free(ptr);
    if (opaque) return;
}
