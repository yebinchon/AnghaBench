
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pseudo_init {int ps_count; int (* ps_func ) (int ) ;} ;
typedef int kern_return_t ;


 int IOKitBSDInit () ;
 int kminit () ;
 int kprintf (char*) ;
 struct pseudo_init* pseudo_inits ;
 int stub1 (int ) ;

kern_return_t
bsd_autoconf(void)
{
 kprintf("bsd_autoconf: calling kminit\n");
 kminit();




 {
     struct pseudo_init *pi;

     for (pi = pseudo_inits; pi->ps_func; pi++)
  (*pi->ps_func) (pi->ps_count);
 }

 return( IOKitBSDInit());
}
