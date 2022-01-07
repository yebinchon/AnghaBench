
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * NewLock () ;
 int * nat_lock ;

void NtInit()
{
 if (nat_lock != ((void*)0))
 {
  return;
 }

 nat_lock = NewLock();
}
