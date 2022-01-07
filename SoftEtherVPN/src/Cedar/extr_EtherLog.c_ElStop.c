
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Lock (int ) ;
 int ReleaseEl (int *) ;
 int Unlock (int ) ;
 int * el ;
 int el_lock ;

void ElStop()
{
 Lock(el_lock);
 {
  ReleaseEl(el);
  el = ((void*)0);
 }
 Unlock(el_lock);
}
