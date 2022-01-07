
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Lock (int ) ;
 int NewEl () ;
 int OSSetHighPriority () ;
 int Unlock (int ) ;
 int el ;
 int el_lock ;

void ElStart()
{

 OSSetHighPriority();

 Lock(el_lock);
 {
  el = NewEl();
 }
 Unlock(el_lock);
}
