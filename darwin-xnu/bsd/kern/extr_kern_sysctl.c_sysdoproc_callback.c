
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdoproc_args {scalar_t__ buflen; scalar_t__ sizeof_kproc; scalar_t__ ruidcheck; scalar_t__ uidcheck; scalar_t__ ttycheck; int* errorp; int needed; int dp; int kprocp; scalar_t__ is_64_bit; int uidval; } ;
typedef int proc_t ;


 int PROC_RETURNED ;
 int PROC_RETURNED_DONE ;
 int bzero (int ,scalar_t__) ;
 int copyout (int ,int ,scalar_t__) ;
 int fill_user32_proc (int ,int ) ;
 int fill_user64_proc (int ,int ) ;
 scalar_t__ sysdoproc_filt_KERN_PROC_RUID (int ,int *) ;
 scalar_t__ sysdoproc_filt_KERN_PROC_TTY (int ,int *) ;
 scalar_t__ sysdoproc_filt_KERN_PROC_UID (int ,int *) ;

int
sysdoproc_callback(proc_t p, void *arg)
{
 struct sysdoproc_args *args = arg;

 if (args->buflen >= args->sizeof_kproc) {
  if ((args->ruidcheck != 0) && (sysdoproc_filt_KERN_PROC_RUID(p, &args->uidval) == 0))
   return (PROC_RETURNED);
  if ((args->uidcheck != 0) && (sysdoproc_filt_KERN_PROC_UID(p, &args->uidval) == 0))
   return (PROC_RETURNED);
  if ((args->ttycheck != 0) && (sysdoproc_filt_KERN_PROC_TTY(p, &args->uidval) == 0))
   return (PROC_RETURNED);

  bzero(args->kprocp, args->sizeof_kproc);
  if (args->is_64_bit)
   fill_user64_proc(p, args->kprocp);
  else
   fill_user32_proc(p, args->kprocp);
  int error = copyout(args->kprocp, args->dp, args->sizeof_kproc);
  if (error) {
   *args->errorp = error;
   return (PROC_RETURNED_DONE);
  }
  args->dp += args->sizeof_kproc;
  args->buflen -= args->sizeof_kproc;
 }
 args->needed += args->sizeof_kproc;
 return (PROC_RETURNED);
}
