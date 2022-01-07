
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_8__* thread_t ;
struct TYPE_16__ {TYPE_6__* uNeon; TYPE_3__* upcb; } ;
struct TYPE_17__ {TYPE_7__ machine; int task; } ;
struct TYPE_14__ {int fpcr; } ;
struct TYPE_13__ {int count; int flavor; } ;
struct TYPE_10__ {int fpcr; } ;
struct TYPE_15__ {TYPE_5__ ns_32; int uns; TYPE_4__ nsh; TYPE_1__ ns_64; } ;
struct TYPE_11__ {int count; int flavor; } ;
struct TYPE_12__ {TYPE_2__ ash; } ;


 int ARM_NEON_SAVED_STATE32 ;
 int ARM_NEON_SAVED_STATE32_COUNT ;
 int ARM_NEON_SAVED_STATE64 ;
 int ARM_NEON_SAVED_STATE64_COUNT ;
 int ARM_SAVED_STATE32 ;
 int ARM_SAVED_STATE32_COUNT ;
 int ARM_SAVED_STATE64 ;
 int ARM_SAVED_STATE64_COUNT ;
 int FPCR_DEFAULT ;
 int FPCR_DEFAULT_32 ;
 int bzero (int *,int) ;
 scalar_t__ task_has_64Bit_data (int ) ;

void
machine_thread_switch_addrmode(thread_t thread)
{
 if (task_has_64Bit_data(thread->task)) {
  thread->machine.upcb->ash.flavor = ARM_SAVED_STATE64;
  thread->machine.upcb->ash.count = ARM_SAVED_STATE64_COUNT;
  thread->machine.uNeon->nsh.flavor = ARM_NEON_SAVED_STATE64;
  thread->machine.uNeon->nsh.count = ARM_NEON_SAVED_STATE64_COUNT;




  bzero(&thread->machine.uNeon->uns, sizeof(thread->machine.uNeon->uns));
  thread->machine.uNeon->ns_64.fpcr = FPCR_DEFAULT;
 } else {
  thread->machine.upcb->ash.flavor = ARM_SAVED_STATE32;
  thread->machine.upcb->ash.count = ARM_SAVED_STATE32_COUNT;
  thread->machine.uNeon->nsh.flavor = ARM_NEON_SAVED_STATE32;
  thread->machine.uNeon->nsh.count = ARM_NEON_SAVED_STATE32_COUNT;




  bzero(&thread->machine.uNeon->uns, sizeof(thread->machine.uNeon->uns));
  thread->machine.uNeon->ns_32.fpcr = FPCR_DEFAULT_32;
 }
}
