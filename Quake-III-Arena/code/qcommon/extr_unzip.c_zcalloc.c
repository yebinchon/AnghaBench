
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ voidp ;


 int Z_Malloc (unsigned int) ;

voidp zcalloc (voidp opaque, unsigned items, unsigned size)
{
    if (opaque) items += size - size;
    return (voidp)Z_Malloc(items*size);
}
