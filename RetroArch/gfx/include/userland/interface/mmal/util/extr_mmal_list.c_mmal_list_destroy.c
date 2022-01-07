
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef int MMAL_LIST_T ;
typedef TYPE_1__ MMAL_LIST_PRIVATE_T ;


 int vcos_free (TYPE_1__*) ;
 int vcos_mutex_delete (int *) ;

void mmal_list_destroy(MMAL_LIST_T *list)
{
   MMAL_LIST_PRIVATE_T *private = (MMAL_LIST_PRIVATE_T*)list;

   vcos_mutex_delete(&private->lock);
   vcos_free(private);
}
