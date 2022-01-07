
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* devfs_event_log_t ;
struct TYPE_3__ {int * del_entries; } ;


 int FREE (int *,int ) ;
 int M_TEMP ;
 int panic (char*) ;

__attribute__((used)) static void
devfs_release_event_log(devfs_event_log_t delp, int need_free)
{
 if (delp->del_entries == ((void*)0)) {
  panic("Free of devfs notify info that has not been intialized.\n");
 }

 if (need_free) {
  FREE(delp->del_entries, M_TEMP);
 }

 delp->del_entries = ((void*)0);
}
