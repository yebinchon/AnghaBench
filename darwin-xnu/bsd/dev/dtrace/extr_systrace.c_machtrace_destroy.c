
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dtrace_id_t ;
struct TYPE_2__ {scalar_t__ stsy_entry; scalar_t__ stsy_return; } ;


 int ASSERT (int) ;
 scalar_t__ DTRACE_IDNONE ;
 scalar_t__ SYSTRACE_ISENTRY (uintptr_t) ;
 int SYSTRACE_SYSNUM (uintptr_t) ;
 TYPE_1__* machtrace_sysent ;

__attribute__((used)) static void
machtrace_destroy(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg,id)
 int sysnum = SYSTRACE_SYSNUM((uintptr_t)parg);

#pragma unused(sysnum)





 if (SYSTRACE_ISENTRY((uintptr_t)parg)) {
  ASSERT(machtrace_sysent[sysnum].stsy_entry == DTRACE_IDNONE);
 } else {
  ASSERT(machtrace_sysent[sysnum].stsy_return == DTRACE_IDNONE);
 }
}
