
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ml_get_max_cpus () ;
 int panic (char*) ;

__attribute__((used)) static int
commpage_cpus( void )
{
 int cpus;

 cpus = ml_get_max_cpus();

 if (cpus == 0)
  panic("commpage cpus==0");
 if (cpus > 0xFF)
  cpus = 0xFF;

 return cpus;
}
