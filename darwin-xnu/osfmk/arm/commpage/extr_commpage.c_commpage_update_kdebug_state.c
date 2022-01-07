
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ _COMM_PAGE_KDEBUG_ENABLE ;
 scalar_t__ _COMM_PAGE_RW_OFFSET ;
 scalar_t__ commPagePtr ;
 int kdebug_commpage_state () ;

void
commpage_update_kdebug_state(void)
{
 if (commPagePtr)
  *((volatile uint32_t*)(_COMM_PAGE_KDEBUG_ENABLE+_COMM_PAGE_RW_OFFSET)) = kdebug_commpage_state();
}
