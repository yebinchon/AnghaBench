
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileproc {scalar_t__ f_flag; } ;
typedef int proc_t ;


 int current_proc () ;
 int fp_drop (int ,int,struct fileproc*,int) ;
 int fp_lookup (int ,int,struct fileproc**,int) ;
 int proc_fdlock_spin (int ) ;
 int proc_fdunlock (int ) ;

int
file_flags(int fd, int *flags)
{

 proc_t p = current_proc();
 struct fileproc *fp;
 int error;

 proc_fdlock_spin(p);
 if ( (error = fp_lookup(p, fd, &fp, 1)) ) {
  proc_fdunlock(p);
  return(error);
 }
 *flags = (int)fp->f_flag;
 fp_drop(p, fd, fp,1);
 proc_fdunlock(p);

 return(0);
}
