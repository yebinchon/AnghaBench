
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_info_t ;


 int LOCKSTAT_MAJOR ;
 int cdevsw_add (int ,int *) ;
 int lockstat_attach (int *) ;
 int lockstat_cdevsw ;
 int printf (char*) ;

void lockstat_init( void )
{
 int majdevno = cdevsw_add(LOCKSTAT_MAJOR, &lockstat_cdevsw);

 if (majdevno < 0) {
  printf("lockstat_init: failed to allocate a major number!\n");
  return;
 }

 lockstat_attach((dev_info_t*)(uintptr_t)majdevno);
}
