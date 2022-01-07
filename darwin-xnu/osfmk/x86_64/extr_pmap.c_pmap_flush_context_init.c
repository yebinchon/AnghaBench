
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pfc_invalid_global; scalar_t__ pfc_cpus; } ;
typedef TYPE_1__ pmap_flush_context ;



void
pmap_flush_context_init(pmap_flush_context *pfc)
{
 pfc->pfc_cpus = 0;
 pfc->pfc_invalid_global = 0;
}
