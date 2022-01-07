
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEVFS_CHAR ;
 int DTRACEMNR_HELPER ;
 int GID_WHEEL ;
 int HELPER_MAJOR ;
 int UID_ROOT ;
 scalar_t__ cdevsw_add (int ,int *) ;
 int * devfs_make_node (int ,int ,int ,int ,int,int ,int ) ;
 int gDTraceInited ;
 int helper_cdevsw ;
 scalar_t__ helper_majdevno ;
 int makedev (scalar_t__,int ) ;
 int panic (char*) ;
 int printf (char*) ;

void
helper_init( void )
{






 if (!gDTraceInited) {
  panic("helper_init before dtrace_init\n");
 }

 if (0 >= helper_majdevno)
 {
  helper_majdevno = cdevsw_add(HELPER_MAJOR, &helper_cdevsw);

  if (helper_majdevno < 0) {
   printf("helper_init: failed to allocate a major number!\n");
   return;
  }

  if (((void*)0) == devfs_make_node( makedev(helper_majdevno, 0), DEVFS_CHAR, UID_ROOT, GID_WHEEL, 0666,
     DTRACEMNR_HELPER, 0 )) {
   printf("dtrace_init: failed to devfs_make_node for helper!\n");
   return;
  }
 } else
  panic("helper_init: called twice!\n");
}
