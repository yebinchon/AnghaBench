
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DeleteSema (scalar_t__) ;
 int _lock () ;
 scalar_t__ _lock_sema_id ;
 int _unlock () ;

void _free_ps2_io(void) {
   _lock();
   _unlock();
   if(_lock_sema_id >= 0) DeleteSema(_lock_sema_id);
}
