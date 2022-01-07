
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int Halt; } ;
typedef int SOCK ;
typedef int PACK ;


 int Lock (int ) ;
 scalar_t__ MsGetProcessId () ;
 scalar_t__ PackGetInt (int *,char*) ;
 int StopListener (TYPE_1__*) ;
 scalar_t__ Tick64 () ;
 int Unlock (int ) ;
 TYPE_1__* cn_listener ;
 int cn_listener_lock ;
 scalar_t__ cn_next_allow ;

void CnReleaseSocket(SOCK *s, PACK *p)
{
 UINT pid = 0;
 UINT current_pid = 0;

 if (s == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 pid = PackGetInt(p, "pid");





 if (current_pid == pid)
 {
  return;
 }

 Lock(cn_listener_lock);
 {
  if (cn_listener != ((void*)0))
  {
   if (cn_listener->Halt == 0)
   {
    StopListener(cn_listener);

    cn_next_allow = Tick64() + (6 * 1000);
   }
  }
 }
 Unlock(cn_listener_lock);
}
