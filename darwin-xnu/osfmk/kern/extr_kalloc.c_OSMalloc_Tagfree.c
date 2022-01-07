
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int queue_entry_t ;
struct TYPE_3__ {int OSMT_refcnt; int OSMT_state; int OSMT_name; } ;
typedef TYPE_1__* OSMallocTag ;


 int OSMT_RELEASED ;
 int OSMT_VALID ;
 int OSMalloc_tag_spin_lock () ;
 int OSMalloc_tag_unlock () ;
 scalar_t__ hw_atomic_sub (int *,int) ;
 int hw_compare_and_store (int,int,int *) ;
 int kfree (void*,int) ;
 int panic (char*,int ,int ) ;
 int remque (int ) ;

void
OSMalloc_Tagfree(
  OSMallocTag tag)
{
 if (!hw_compare_and_store(OSMT_VALID, OSMT_VALID|OSMT_RELEASED, &tag->OSMT_state))
  panic("OSMalloc_Tagfree():'%s' has bad state 0x%08X \n", tag->OSMT_name, tag->OSMT_state);

 if (hw_atomic_sub(&tag->OSMT_refcnt, 1) == 0) {
  OSMalloc_tag_spin_lock();
  (void)remque((queue_entry_t)tag);
  OSMalloc_tag_unlock();
  kfree((void*)tag, sizeof(*tag));
 }
}
