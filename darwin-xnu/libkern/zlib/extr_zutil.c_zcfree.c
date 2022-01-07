
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ voidpf ;


 int free (scalar_t__) ;

void
zcfree(voidpf opaque, voidpf ptr)
{
    free(ptr);
    if (opaque) return;
}
