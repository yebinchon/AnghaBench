
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vfs_context_t ;
struct TYPE_7__ {scalar_t__ p_ucred; } ;
struct TYPE_6__ {scalar_t__ vc_ucred; int * vc_thread; } ;


 scalar_t__ NOCRED ;
 TYPE_1__ kerncontext ;
 TYPE_3__* kernproc ;
 int * proc_thread (TYPE_3__*) ;

vfs_context_t
vfs_context_kernel(void)
{
 if (kerncontext.vc_ucred == NOCRED)
  kerncontext.vc_ucred = kernproc->p_ucred;
 if (kerncontext.vc_thread == ((void*)0))
  kerncontext.vc_thread = proc_thread(kernproc);

 return(&kerncontext);
}
