
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
typedef int uint64_t ;
typedef int dtrace_id_t ;
struct TYPE_5__ {char* dtargd_native; void* dtargd_ndx; } ;
typedef TYPE_2__ dtrace_argdesc_t ;
struct TYPE_4__ {int * t_dtrace_syscall_args; } ;


 void* DTRACE_ARGNONE ;
 scalar_t__ SYSTRACE_ISENTRY (uintptr_t) ;
 int SYSTRACE_SYSNUM (void*) ;
 int current_thread () ;
 int get_bsdthread_info (int ) ;
 int systrace_entry_setargdesc (int,void*,char*,int) ;
 int systrace_return_setargdesc (int,void*,char*,int) ;

__attribute__((used)) static void
systrace_getargdesc(void *arg, dtrace_id_t id, void *parg,
 dtrace_argdesc_t *desc)
{
#pragma unused(arg, id)
 int sysnum = SYSTRACE_SYSNUM(parg);
 uthread_t uthread = (uthread_t)get_bsdthread_info(current_thread());
 uint64_t *uargs = ((void*)0);

 if (!uthread) {
  desc->dtargd_ndx = DTRACE_ARGNONE;
  return;
 }

 uargs = uthread->t_dtrace_syscall_args;

 if (SYSTRACE_ISENTRY((uintptr_t)parg)) {
  systrace_entry_setargdesc(sysnum, desc->dtargd_ndx,
   desc->dtargd_native, sizeof(desc->dtargd_native));
 }
 else {
  systrace_return_setargdesc(sysnum, desc->dtargd_ndx,
   desc->dtargd_native, sizeof(desc->dtargd_native));
 }

 if (desc->dtargd_native[0] == '\0')
  desc->dtargd_ndx = DTRACE_ARGNONE;
}
