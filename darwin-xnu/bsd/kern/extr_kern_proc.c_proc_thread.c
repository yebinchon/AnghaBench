
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* uthread_t ;
typedef int * thread_t ;
typedef TYPE_3__* proc_t ;
struct TYPE_8__ {int p_uthlist; } ;
struct TYPE_6__ {int * vc_thread; } ;
struct TYPE_7__ {TYPE_1__ uu_context; } ;


 TYPE_2__* TAILQ_FIRST (int *) ;

thread_t
proc_thread(proc_t proc)
{
        uthread_t uth = TAILQ_FIRST(&proc->p_uthlist);

        if (uth != ((void*)0))
                return(uth->uu_context.vc_thread);

 return(((void*)0));
}
