
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileproc {int f_flags; } ;
typedef int proc_t ;


 int FP_WRITTEN ;
 int fp_drop (int ,int,struct fileproc*,int) ;
 int proc_fdlock_spin (int ) ;
 int proc_fdunlock (int ) ;

int
fp_drop_written(proc_t p, int fd, struct fileproc *fp)
{
        int error;

 proc_fdlock_spin(p);

 fp->f_flags |= FP_WRITTEN;

 error = fp_drop(p, fd, fp, 1);

 proc_fdunlock(p);

 return (error);
}
