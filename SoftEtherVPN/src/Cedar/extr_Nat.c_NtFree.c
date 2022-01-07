
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DeleteLock (int *) ;
 int * nat_lock ;

void NtFree()
{
 if (nat_lock == ((void*)0))
 {
  return;
 }

 DeleteLock(nat_lock);
 nat_lock = ((void*)0);
}
