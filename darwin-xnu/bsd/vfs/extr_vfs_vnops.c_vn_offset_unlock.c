
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileglob {int fg_lflags; int fg_lock; } ;


 int FG_OFF_LOCKED ;
 int FG_OFF_LOCKWANT ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 int wakeup (int*) ;

__attribute__((used)) static inline void
vn_offset_unlock(struct fileglob *fg)
{
 int lock_wanted = 0;

 lck_mtx_lock_spin(&fg->fg_lock);
 if (fg->fg_lflags & FG_OFF_LOCKWANT) {
  lock_wanted = 1;
 }
 fg->fg_lflags &= ~(FG_OFF_LOCKED | FG_OFF_LOCKWANT);
 lck_mtx_unlock(&fg->fg_lock);
 if (lock_wanted) {
  wakeup(&fg->fg_lflags);
 }
}
