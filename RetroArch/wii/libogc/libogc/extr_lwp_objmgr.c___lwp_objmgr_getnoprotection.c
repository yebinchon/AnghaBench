
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {size_t max_id; int ** local_table; } ;
typedef TYPE_1__ lwp_objinfo ;
typedef int lwp_obj ;



lwp_obj* __lwp_objmgr_getnoprotection(lwp_objinfo *info,u32 id)
{
 lwp_obj *object = ((void*)0);

 if(info->max_id>=id) {
  if((object=info->local_table[id])!=((void*)0)) return object;
 }
 return ((void*)0);
}
