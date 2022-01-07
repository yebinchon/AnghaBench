
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int inactives_cnt; int inactives; } ;
typedef TYPE_1__ lwp_objinfo ;
struct TYPE_6__ {int * information; int node; } ;
typedef TYPE_2__ lwp_obj ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __lwp_queue_appendI (int *,int *) ;

void __lwp_objmgr_free(lwp_objinfo *info,lwp_obj *object)
{
 u32 level;

 _CPU_ISR_Disable(level);
 __lwp_queue_appendI(&info->inactives,&object->node);
 object->information = ((void*)0);
 info->inactives_cnt++;
 _CPU_ISR_Restore(level);
}
