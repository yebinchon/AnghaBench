
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __MALLOC_ZONE (size_t,int,int,int *) ;

void *
_MALLOC_ZONE_external(
 size_t size,
 int type,
 int flags)
{
    return (__MALLOC_ZONE(size, type, flags, ((void*)0)));
}
