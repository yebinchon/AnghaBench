
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ refcnt; } ;
typedef TYPE_1__ mtrr_var_range_t ;
typedef int kern_return_t ;
typedef int addr64_t ;
struct TYPE_6__ {int MTRRcap; unsigned int var_count; TYPE_1__* var_range; } ;


 int DBG (char*,int,int,int ) ;
 scalar_t__ FALSE ;
 int IA32_MTRRCAP_WC ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_NOT_SUPPORTED ;
 int KERN_NO_SPACE ;
 int KERN_SUCCESS ;
 int LSB (int) ;
 int MTRR_LOCK () ;
 int MTRR_TYPE_UNCACHEABLE ;
 int MTRR_TYPE_WRITEBACK ;
 int MTRR_TYPE_WRITECOMBINE ;
 int MTRR_TYPE_WRITEPROTECT ;
 int MTRR_TYPE_WRITETHROUGH ;
 int MTRR_UNLOCK () ;
 int mp_rendezvous (int ,int ,int ,int *) ;
 scalar_t__ mtrr_initialized ;
 int mtrr_msr_dump () ;
 TYPE_4__ mtrr_state ;
 int mtrr_update_action ;
 int mtrr_update_setup ;
 int mtrr_update_teardown ;
 int var_range_encode (TYPE_1__*,int,int,int ,int) ;
 int var_range_overlap (TYPE_1__*,int,int,int ) ;

kern_return_t
mtrr_range_add(addr64_t address, uint64_t length, uint32_t type)
{
 mtrr_var_range_t * vr;
 mtrr_var_range_t * free_range;
 kern_return_t ret = KERN_NO_SPACE;
 int overlap;
 unsigned int i;

 DBG("mtrr_range_add base = 0x%llx, size = 0x%llx, type = %d\n",
            address, length, type);

 if (mtrr_initialized == FALSE) {
  return KERN_NOT_SUPPORTED;
 }


 if ((type != MTRR_TYPE_UNCACHEABLE) &&
     (type != MTRR_TYPE_WRITECOMBINE) &&
     (type != MTRR_TYPE_WRITETHROUGH) &&
     (type != MTRR_TYPE_WRITEPROTECT) &&
     (type != MTRR_TYPE_WRITEBACK)) {
  return KERN_INVALID_ARGUMENT;
 }


 if ((type == MTRR_TYPE_WRITECOMBINE) &&
     (mtrr_state.MTRRcap & IA32_MTRRCAP_WC) == 0) {
  return KERN_NOT_SUPPORTED;
 }


 if (address < 0x100000 || mtrr_state.var_count == 0) {
  return KERN_NOT_SUPPORTED;
 }





 if ((length < 0x1000) ||
     (LSB(length) != length) ||
            (address && (length > LSB(address)))) {
  return KERN_INVALID_ARGUMENT;
 }

 MTRR_LOCK();




 for (i = 0, free_range = ((void*)0); i < mtrr_state.var_count; i++)
 {
  vr = &mtrr_state.var_range[i];

  if (vr->refcnt == 0) {

   free_range = vr;
   continue;
  }

  overlap = var_range_overlap(vr, address, length, type);
  if (overlap > 0) {




   free_range = vr;
   break;
  }
  if (overlap < 0) {

   free_range = ((void*)0);
   break;
  }
 }

 if (free_range) {
  if (free_range->refcnt++ == 0) {
   var_range_encode(free_range, address, length, type, 1);
   mp_rendezvous(mtrr_update_setup,
          mtrr_update_action,
          mtrr_update_teardown, ((void*)0));
  }
  ret = KERN_SUCCESS;
 }





 MTRR_UNLOCK();

 return ret;
}
