
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
struct TYPE_7__ {scalar_t__ nested; } ;


 scalar_t__ FALSE ;
 int PMAP_LOCK (TYPE_1__*) ;
 TYPE_1__* PMAP_NULL ;
 int PMAP_UNLOCK (TYPE_1__*) ;
 TYPE_1__* kernel_pmap ;

void
pmap_collect(pmap_t pmap)
{
 if (pmap == PMAP_NULL)
  return;
 return;
}
