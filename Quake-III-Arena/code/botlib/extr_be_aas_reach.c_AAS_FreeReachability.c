
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ aas_lreachability_t ;


 int Com_Memset (TYPE_1__*,int ,int) ;
 TYPE_1__* nextreachability ;
 int numlreachabilities ;

void AAS_FreeReachability(aas_lreachability_t *lreach)
{
 Com_Memset(lreach, 0, sizeof(aas_lreachability_t));

 lreach->next = nextreachability;
 nextreachability = lreach;
 numlreachabilities--;
}
