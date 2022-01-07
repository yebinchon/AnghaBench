
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int OSMT_state; int OSMT_refcnt; int OSMT_name; } ;
typedef TYPE_1__* OSMallocTag ;


 int OSMT_VALID ;
 int OSMT_VALID_MASK ;
 int hw_atomic_add (int *,int) ;
 int panic (char*,int ,int) ;

void
OSMalloc_Tagref(
  OSMallocTag tag)
{
 if (!((tag->OSMT_state & OSMT_VALID_MASK) == OSMT_VALID))
  panic("OSMalloc_Tagref():'%s' has bad state 0x%08X\n", tag->OSMT_name, tag->OSMT_state);

 (void)hw_atomic_add(&tag->OSMT_refcnt, 1);
}
