
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int target_val; scalar_t__ target_kaddr; int lock; int started_event; } ;
typedef TYPE_1__ mch2_thread_args_t ;


 int U64_MAX ;
 int svcExitThread () ;
 int svcSignalEvent (int ) ;
 int svcWaitSynchronization (int ,int ) ;
 int write_kaddr (scalar_t__,int ) ;

__attribute__((used)) static void target_thread_entry(mch2_thread_args_t* args)
{
   svcSignalEvent(args->started_event);
   svcWaitSynchronization(args->lock, U64_MAX);

   if (args->target_kaddr)
      write_kaddr(args->target_kaddr, args->target_val);

   svcExitThread();
}
