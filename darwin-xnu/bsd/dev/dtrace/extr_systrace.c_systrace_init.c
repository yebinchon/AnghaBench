
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_info_t ;


 int SYSTRACE_MAJOR ;
 int cdevsw_add (int ,int *) ;
 scalar_t__ dtrace_sdt_probes_restricted () ;
 int machtrace_attach (int *) ;
 int printf (char*) ;
 int systrace_attach (int *) ;
 int systrace_cdevsw ;

void systrace_init( void )
{
 if (dtrace_sdt_probes_restricted()) {
  return;
 }

 int majdevno = cdevsw_add(SYSTRACE_MAJOR, &systrace_cdevsw);

 if (majdevno < 0) {
  printf("systrace_init: failed to allocate a major number!\n");
  return;
 }

 systrace_attach((dev_info_t*)(uintptr_t)majdevno);
 machtrace_attach((dev_info_t*)(uintptr_t)majdevno);
}
