
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_info_t ;


 int SDT_MAJOR ;
 int cdevsw_add (int ,int *) ;
 scalar_t__ dtrace_sdt_probes_restricted () ;
 int printf (char*) ;
 int sdt_attach (int *) ;
 int sdt_cdevsw ;

void sdt_init( void )
{
 int majdevno = cdevsw_add(SDT_MAJOR, &sdt_cdevsw);

 if (majdevno < 0) {
  printf("sdt_init: failed to allocate a major number!\n");
  return;
 }

 if (dtrace_sdt_probes_restricted()) {
  return;
 }

 sdt_attach((dev_info_t*)(uintptr_t)majdevno);
}
