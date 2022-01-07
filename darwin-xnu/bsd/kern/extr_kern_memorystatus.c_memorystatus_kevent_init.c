
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_grp_t ;
typedef int lck_attr_t ;


 int klist_init (int *) ;
 int lck_mtx_init (int *,int *,int *) ;
 int memorystatus_klist ;
 int memorystatus_klist_mutex ;

void
memorystatus_kevent_init(lck_grp_t *grp, lck_attr_t *attr) {
 lck_mtx_init(&memorystatus_klist_mutex, grp, attr);
 klist_init(&memorystatus_klist);
}
