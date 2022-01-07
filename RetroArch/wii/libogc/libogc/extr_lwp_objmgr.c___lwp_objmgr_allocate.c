
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int inactives_cnt; int inactives; } ;
typedef TYPE_1__ lwp_objinfo ;
struct TYPE_6__ {TYPE_1__* information; } ;
typedef TYPE_2__ lwp_obj ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 scalar_t__ __lwp_queue_getI (int *) ;

lwp_obj* __lwp_objmgr_allocate(lwp_objinfo *info)
{
 u32 level;
 lwp_obj* object;

 _CPU_ISR_Disable(level);
  object = (lwp_obj*)__lwp_queue_getI(&info->inactives);
  if(object) {
   object->information = info;
   info->inactives_cnt--;
  }
 _CPU_ISR_Restore(level);

 return object;
}
