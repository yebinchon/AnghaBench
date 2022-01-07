
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int dummy; } ;


 int KNOTE_DETACH (int *,struct knote*) ;
 int fs_klist ;
 int fs_klist_lock ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;

__attribute__((used)) static void
filt_fsdetach(struct knote *kn)
{
 lck_mtx_lock(fs_klist_lock);
 KNOTE_DETACH(&fs_klist, kn);
 lck_mtx_unlock(fs_klist_lock);
}
