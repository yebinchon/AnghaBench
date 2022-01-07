
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Lock (int ) ;
 int NiFreeNat (int *) ;
 int Unlock (int ) ;
 int * nat ;
 int nat_lock ;

void NtStopNat()
{
 Lock(nat_lock);
 {
  if (nat != ((void*)0))
  {
   NiFreeNat(nat);
   nat = ((void*)0);
  }
 }
 Unlock(nat_lock);
}
