
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* at_exit; int arg; void* (* entry ) (int ) ;scalar_t__ legacy; scalar_t__ name; scalar_t__ dummy; } ;
typedef TYPE_2__ VCOS_THREAD_T ;
struct TYPE_4__ {int cxt; int (* pfn ) (int ) ;} ;
typedef int (* LEGACY_ENTRY_FN_T ) (int ,int ) ;


 int PR_SET_NAME ;
 int _vcos_thread_current_key ;
 int prctl (int ,unsigned long,int ,int ,int ) ;
 int pthread_setspecific (int ,TYPE_2__*) ;
 int stub1 (int ,int ) ;
 void* stub2 (int ) ;
 int stub3 (int ) ;
 int vcos_assert (int ) ;

__attribute__((used)) static void *vcos_thread_entry(void *arg)
{
   int i;
   void *ret;
   VCOS_THREAD_T *thread = (VCOS_THREAD_T *)arg;

   vcos_assert(thread != ((void*)0));
   thread->dummy = 0;

   pthread_setspecific(_vcos_thread_current_key, thread);




   if (thread->legacy)
   {
      LEGACY_ENTRY_FN_T fn = (LEGACY_ENTRY_FN_T)thread->entry;
      (*fn)(0, thread->arg);
      ret = 0;
   }
   else
   {
      ret = (*thread->entry)(thread->arg);
   }


   for (i=0; thread->at_exit[i].pfn != ((void*)0); i++)
   {
      thread->at_exit[i].pfn(thread->at_exit[i].cxt);
   }

   return ret;
}
