
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_5__ {int member_0; } ;
typedef TYPE_1__ ex_cb_state_t ;
struct TYPE_6__ {int refcon; int (* cb ) (size_t,int ,TYPE_1__*) ;} ;
typedef TYPE_2__ ex_cb_info_t ;
typedef size_t ex_cb_class_t ;
typedef int ex_cb_action_t ;


 int EXCB_ACTION_NONE ;
 size_t EXCB_CLASS_MAX ;
 TYPE_2__* ex_cb_info ;
 int panic (char*,size_t) ;
 int stub1 (size_t,int ,TYPE_1__*) ;

ex_cb_action_t ex_cb_invoke(
 ex_cb_class_t cb_class,
 vm_offset_t far)
{
 ex_cb_info_t *pInfo = &ex_cb_info[cb_class];
 ex_cb_state_t state = {far};

 if (cb_class >= EXCB_CLASS_MAX)
 {
  panic("Invalid exception callback class 0x%x\n", cb_class);
 }

 if (pInfo->cb)
 {
  return pInfo->cb(cb_class, pInfo->refcon, &state);
 }
 return EXCB_ACTION_NONE;
}
