
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * libc_reent; } ;
typedef TYPE_1__ lwp_cntrl ;



int __libc_create_hook(lwp_cntrl *curr_thr,lwp_cntrl *create_thr)
{
 create_thr->libc_reent = ((void*)0);
 return 1;
}
