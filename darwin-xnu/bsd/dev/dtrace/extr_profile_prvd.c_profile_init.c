
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_info_t ;


 int PROFILE_MAJOR ;
 int cdevsw_add (int ,int *) ;
 int printf (char*) ;
 int profile_attach (int *) ;
 int profile_cdevsw ;

void profile_init( void )
{
 int majdevno = cdevsw_add(PROFILE_MAJOR, &profile_cdevsw);

 if (majdevno < 0) {
  printf("profile_init: failed to allocate a major number!\n");
  return;
 }

 profile_attach( (dev_info_t*)(uintptr_t)majdevno);
}
