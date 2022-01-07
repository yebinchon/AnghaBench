
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ iv_index_t ;
typedef int ipc_voucher_attr_manager_t ;
typedef TYPE_1__* ipc_voucher_attr_control_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_7__ {TYPE_1__* ivgte_control; int ivgte_manager; } ;
struct TYPE_6__ {scalar_t__ ivac_key_index; } ;


 TYPE_1__* IVAC_NULL ;
 int IVAM_NULL ;
 scalar_t__ MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN ;
 int assert (int) ;
 TYPE_4__* iv_global_table ;
 int ivac_reference (TYPE_1__*) ;
 int ivgt_lock () ;
 int ivgt_unlock () ;

__attribute__((used)) static void
ivgt_lookup(iv_index_t key_index,
     boolean_t take_reference,
     ipc_voucher_attr_manager_t *manager,
     ipc_voucher_attr_control_t *control)
{
 ipc_voucher_attr_control_t ivac;

 if (key_index < MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN) {
  ivgt_lock();
  if (((void*)0) != manager)
   *manager = iv_global_table[key_index].ivgte_manager;
  ivac = iv_global_table[key_index].ivgte_control;
  if (IVAC_NULL != ivac) {
   assert(key_index == ivac->ivac_key_index);
   if (take_reference) {
    assert(((void*)0) != control);
    ivac_reference(ivac);
   }
  }
  ivgt_unlock();
  if (((void*)0) != control)
   *control = ivac;
 } else {
  if (((void*)0) != manager)
   *manager = IVAM_NULL;
  if (((void*)0) != control)
   *control = IVAC_NULL;
 }
}
