
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;


 unsigned int pmap_disconnect_options (int ,int ,int *) ;

unsigned int
pmap_disconnect(ppnum_t pa)
{
 return (pmap_disconnect_options(pa, 0, ((void*)0)));
}
