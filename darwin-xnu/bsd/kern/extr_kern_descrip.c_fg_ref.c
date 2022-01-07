
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileproc {unsigned int f_flags; struct fileglob* f_fglob; } ;
struct fileglob {scalar_t__ fg_count; int fg_lock; } ;


 scalar_t__ FP_VALID_FLAGS ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 int panic (char*,struct fileproc*,...) ;

void
fg_ref(struct fileproc * fp)
{
 struct fileglob *fg;

 fg = fp->f_fglob;

 lck_mtx_lock_spin(&fg->fg_lock);
 fg->fg_count++;
 lck_mtx_unlock(&fg->fg_lock);
}
