
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct c_slot {int dummy; } ;
typedef TYPE_1__* c_segment_t ;
struct TYPE_3__ {scalar_t__ c_nextslot; scalar_t__ c_slot_var_array_len; int c_lock; struct c_slot* c_slot_var_array; } ;


 int C_SEG_SLOT_VAR_ARRAY_MIN_LEN ;
 scalar_t__ c_seg_fixed_array_len ;
 scalar_t__ kalloc (int) ;
 int kfree (struct c_slot*,int) ;
 int lck_mtx_lock_spin_always (int *) ;
 int lck_mtx_unlock_always (int *) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static void
c_seg_alloc_nextslot(c_segment_t c_seg)
{
 struct c_slot *old_slot_array = ((void*)0);
 struct c_slot *new_slot_array = ((void*)0);
 int newlen;
 int oldlen;

 if (c_seg->c_nextslot < c_seg_fixed_array_len)
  return;

 if ((c_seg->c_nextslot - c_seg_fixed_array_len) >= c_seg->c_slot_var_array_len) {

  oldlen = c_seg->c_slot_var_array_len;
  old_slot_array = c_seg->c_slot_var_array;

  if (oldlen == 0)
   newlen = C_SEG_SLOT_VAR_ARRAY_MIN_LEN;
  else
   newlen = oldlen * 2;

  new_slot_array = (struct c_slot *)kalloc(sizeof(struct c_slot) * newlen);

  lck_mtx_lock_spin_always(&c_seg->c_lock);

  if (old_slot_array)
   memcpy((char *)new_slot_array, (char *)old_slot_array, sizeof(struct c_slot) * oldlen);

  c_seg->c_slot_var_array_len = newlen;
  c_seg->c_slot_var_array = new_slot_array;

  lck_mtx_unlock_always(&c_seg->c_lock);

  if (old_slot_array)
   kfree(old_slot_array, sizeof(struct c_slot) * oldlen);
 }
}
