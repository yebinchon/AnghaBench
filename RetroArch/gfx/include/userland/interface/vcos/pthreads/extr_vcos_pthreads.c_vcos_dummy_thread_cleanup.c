
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* at_exit; scalar_t__ dummy; } ;
typedef TYPE_2__ VCOS_THREAD_T ;
struct TYPE_5__ {int cxt; int (* pfn ) (int ) ;} ;


 int stub1 (int ) ;
 int vcos_free (TYPE_2__*) ;
 int vcos_thread_cleanup (TYPE_2__*) ;

__attribute__((used)) static void vcos_dummy_thread_cleanup(void *cxt)
{
   VCOS_THREAD_T *thread = cxt;
   if (thread->dummy)
   {
      int i;

      for (i=0; thread->at_exit[i].pfn != ((void*)0); i++)
      {
         thread->at_exit[i].pfn(thread->at_exit[i].cxt);
      }
      vcos_thread_cleanup(thread);
      vcos_free(thread);
   }
}
