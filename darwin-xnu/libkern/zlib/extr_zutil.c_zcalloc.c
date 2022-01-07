
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ voidpf ;
typedef int uInt ;


 int bzero (scalar_t__,unsigned int) ;
 int calloc (unsigned int,unsigned int) ;
 scalar_t__ malloc (unsigned int) ;

voidpf
zcalloc(voidpf opaque, unsigned items, unsigned size)
{
    if (opaque) items += size - size;
    if (sizeof(uInt) > 2) {



        voidpf p = malloc(items * size);
        bzero(p, items * size);
        return p;
    } else
        return (voidpf)calloc(items, size);
}
