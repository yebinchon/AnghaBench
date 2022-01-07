
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ length; int * last; int * first; } ;
struct TYPE_7__ {TYPE_1__ list; int lock; } ;
typedef TYPE_1__ MMAL_LIST_T ;
typedef TYPE_2__ MMAL_LIST_PRIVATE_T ;


 scalar_t__ VCOS_SUCCESS ;
 int vcos_free (TYPE_2__*) ;
 TYPE_2__* vcos_malloc (int,char*) ;
 scalar_t__ vcos_mutex_create (int *,char*) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

MMAL_LIST_T* mmal_list_create(void)
{
   MMAL_LIST_PRIVATE_T *private;

   private = vcos_malloc(sizeof(MMAL_LIST_PRIVATE_T), "mmal-list");
   if (private == ((void*)0))
      goto error;

   if (vcos_mutex_create(&private->lock, "mmal-list lock") != VCOS_SUCCESS)
      goto error;


   vcos_mutex_lock(&private->lock);
   private->list.first = ((void*)0);
   private->list.last = ((void*)0);
   private->list.length = 0;
   vcos_mutex_unlock(&private->lock);

   return &private->list;

error:
   vcos_free(private);
   return ((void*)0);
}
