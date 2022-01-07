
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileglob {int fg_lflags; int fg_lock; } ;


 int FG_OFF_LOCKED ;
 int FG_OFF_LOCKWANT ;
 int PSPIN ;
 int PVFS ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 int msleep (int*,int *,int,char*,int ) ;

__attribute__((used)) static inline void
vn_offset_lock(struct fileglob *fg)
{
 lck_mtx_lock_spin(&fg->fg_lock);
 while (fg->fg_lflags & FG_OFF_LOCKED) {
  fg->fg_lflags |= FG_OFF_LOCKWANT;
  msleep(&fg->fg_lflags, &fg->fg_lock, PVFS | PSPIN,
      "fg_offset_lock_wait", 0);
 }
 fg->fg_lflags |= FG_OFF_LOCKED;
 lck_mtx_unlock(&fg->fg_lock);
}
