
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileproc {struct fileglob* f_fglob; } ;
struct fileglob {int fg_lock; int fg_count; } ;


 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;

void
fg_drop(struct fileproc * fp)
{
 struct fileglob *fg;

 fg = fp->f_fglob;
 lck_mtx_lock_spin(&fg->fg_lock);
 fg->fg_count--;
 lck_mtx_unlock(&fg->fg_lock);
}
