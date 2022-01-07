
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* at_exit; } ;
typedef TYPE_2__ VCOS_THREAD_T ;
typedef int VCOS_STATUS_T ;
struct TYPE_4__ {void (* pfn ) (void*) ;void* cxt; } ;


 int VCOS_EINVAL ;
 int VCOS_ENOSPC ;
 int VCOS_MAX_EXIT_HANDLERS ;
 int VCOS_SUCCESS ;
 int vcos_assert (int ) ;
 TYPE_2__* vcos_thread_current () ;

extern VCOS_STATUS_T vcos_thread_at_exit(void (*pfn)(void*), void *cxt)
{
   int i;
   VCOS_THREAD_T *self = vcos_thread_current();
   if (!self)
   {
      vcos_assert(0);
      return VCOS_EINVAL;
   }
   for (i=0; i<VCOS_MAX_EXIT_HANDLERS; i++)
   {
      if (self->at_exit[i].pfn == ((void*)0))
      {
         self->at_exit[i].pfn = pfn;
         self->at_exit[i].cxt = cxt;
         return VCOS_SUCCESS;
      }
   }
   return VCOS_ENOSPC;
}
