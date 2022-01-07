
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Lock (int ) ;
 int * NiNewNat () ;
 int Unlock (int ) ;
 int * nat ;
 int nat_lock ;

void NtStartNat()
{
 Lock(nat_lock);
 {
  if (nat == ((void*)0))
  {
   nat = NiNewNat();
  }
 }
 Unlock(nat_lock);
}
