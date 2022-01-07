
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
typedef TYPE_1__ retro_task_t ;
typedef int nbio_handle_t ;


 int free (int *) ;
 int task_image_cleanup (int *) ;

__attribute__((used)) static void task_image_load_free(retro_task_t *task)
{
   nbio_handle_t *nbio = task ? (nbio_handle_t*)task->state : ((void*)0);

   if (nbio)
   {
      task_image_cleanup(nbio);
      free(nbio);
   }
}
