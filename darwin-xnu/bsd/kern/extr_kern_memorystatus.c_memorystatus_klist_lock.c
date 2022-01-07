
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lck_mtx_lock (int *) ;
 int memorystatus_klist_mutex ;

__attribute__((used)) static void
memorystatus_klist_lock(void) {
 lck_mtx_lock(&memorystatus_klist_mutex);
}
