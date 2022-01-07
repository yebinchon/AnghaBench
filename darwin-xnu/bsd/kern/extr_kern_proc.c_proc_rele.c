
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;


 int proc_list_lock () ;
 int proc_list_unlock () ;
 int proc_rele_locked (int ) ;

int
proc_rele(proc_t p)
{
 proc_list_lock();
 proc_rele_locked(p);
 proc_list_unlock();

 return(0);
}
