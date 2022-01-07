
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBG_TRACE ;
 int kdbg_clear () ;
 int kdbg_lock_init () ;
 scalar_t__ kdbg_typefilter ;
 int ktrace_assert_lock_held () ;
 int typefilter_allow_class (scalar_t__,int ) ;
 int typefilter_reject_all (scalar_t__) ;

void
kdebug_reset(void)
{
 ktrace_assert_lock_held();

 kdbg_lock_init();

 kdbg_clear();
 if (kdbg_typefilter) {
  typefilter_reject_all(kdbg_typefilter);
  typefilter_allow_class(kdbg_typefilter, DBG_TRACE);
 }
}
