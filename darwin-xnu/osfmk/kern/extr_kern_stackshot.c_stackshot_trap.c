
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int kern_return_t ;
struct TYPE_2__ {scalar_t__ cpu_rendezvous_in_progress; } ;


 int DBOP_STACKSHOT ;
 int DebuggerTrapWithState (int ,int *,int *,int *,int ,int *,int ,int ) ;
 int FALSE ;
 scalar_t__ TRUE ;
 TYPE_1__* current_cpu_datap () ;
 int mp_rendezvous_lock () ;
 int mp_rendezvous_unlock () ;
 int panic (char*) ;

__attribute__((used)) static kern_return_t
stackshot_trap()
{
 kern_return_t rv;
 if (current_cpu_datap()->cpu_rendezvous_in_progress == TRUE) {
  panic("Calling stackshot from a rendezvous is not allowed!");
 }

 mp_rendezvous_lock();


 rv = DebuggerTrapWithState(DBOP_STACKSHOT, ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0), FALSE, 0);


 mp_rendezvous_unlock();

 return (rv);
}
