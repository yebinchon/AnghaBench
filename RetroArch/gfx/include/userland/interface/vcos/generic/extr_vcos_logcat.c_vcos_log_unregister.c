
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ refcount; struct TYPE_5__* next; } ;
typedef TYPE_1__ VCOS_LOG_CAT_T ;


 int lock ;
 int vcos_assert (int ) ;
 int vcos_log_platform_unregister (TYPE_1__*) ;
 TYPE_1__* vcos_logging_categories ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

void vcos_log_unregister(VCOS_LOG_CAT_T *category)
{
   VCOS_LOG_CAT_T **pcat;

   vcos_mutex_lock(&lock);
   category->refcount--;
   if (category->refcount == 0)
   {
      pcat = &vcos_logging_categories;
      while (*pcat != category)
      {
         if (!*pcat)
            break;
         if ((*pcat)->next == ((void*)0))
         {
            vcos_assert(0);
            vcos_mutex_unlock(&lock);
            return;
         }
         pcat = &(*pcat)->next;
      }
      if (*pcat)
         *pcat = category->next;

      vcos_log_platform_unregister(category);
   }
   vcos_mutex_unlock(&lock);
}
