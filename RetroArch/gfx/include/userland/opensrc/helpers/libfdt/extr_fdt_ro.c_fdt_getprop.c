
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void const* fdt_getprop_namelen (void const*,int,char const*,int ,int*) ;
 int strlen (char const*) ;

const void *fdt_getprop(const void *fdt, int nodeoffset,
   const char *name, int *lenp)
{
 return fdt_getprop_namelen(fdt, nodeoffset, name, strlen(name), lenp);
}
