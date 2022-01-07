
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _reent {int dummy; } ;
struct TYPE_4__ {struct _reent* libc_reent; } ;
typedef TYPE_1__ lwp_cntrl ;


 int _REENT_INIT_PTR (struct _reent*) ;
 int abort () ;
 scalar_t__ calloc (int,int) ;

int __libc_start_hook(lwp_cntrl *curr_thr,lwp_cntrl *start_thr)
{
 struct _reent *ptr;

 ptr = (struct _reent*)calloc(1,sizeof(struct _reent));
 if(!ptr) abort();

 _REENT_INIT_PTR((ptr));

 start_thr->libc_reent = ptr;
 return 1;
}
