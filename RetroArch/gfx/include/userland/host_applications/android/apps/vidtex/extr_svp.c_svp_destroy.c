
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int created; int sema; int mutex; int timer; int wd_timer; scalar_t__ queue; scalar_t__ out_pool; scalar_t__ connection; int * camera; int * video_decode; int * reader; } ;
typedef TYPE_1__ SVP_T ;
typedef int MMAL_COMPONENT_T ;


 int SVP_CREATED_MUTEX ;
 int SVP_CREATED_SEM ;
 int SVP_CREATED_TIMER ;
 int SVP_CREATED_WD_TIMER ;
 int mmal_component_destroy (int *) ;
 int mmal_component_disable (int *) ;
 int mmal_connection_destroy (scalar_t__) ;
 int mmal_pool_destroy (scalar_t__) ;
 int mmal_queue_destroy (scalar_t__) ;
 int svp_stop (TYPE_1__*) ;
 int vcos_countof (int **) ;
 int vcos_free (TYPE_1__*) ;
 int vcos_mutex_delete (int *) ;
 int vcos_semaphore_delete (int *) ;
 int vcos_timer_delete (int *) ;

void svp_destroy(SVP_T *svp)
{
   if (svp)
   {
      MMAL_COMPONENT_T *components[] = { svp->reader, svp->video_decode, svp->camera };
      MMAL_COMPONENT_T **comp;


      svp_stop(svp);

      for (comp = components; comp < components + vcos_countof(components); comp++)
      {
         mmal_component_disable(*comp);
      }


      if (svp->connection)
      {
         mmal_connection_destroy(svp->connection);
      }

      for (comp = components; comp < components + vcos_countof(components); comp++)
      {
         mmal_component_destroy(*comp);
      }


      if (svp->out_pool)
      {
         mmal_pool_destroy(svp->out_pool);
      }

      if (svp->queue)
      {
         mmal_queue_destroy(svp->queue);
      }

      if (svp->created & SVP_CREATED_WD_TIMER)
      {
         vcos_timer_delete(&svp->wd_timer);
      }

      if (svp->created & SVP_CREATED_TIMER)
      {
         vcos_timer_delete(&svp->timer);
      }

      if (svp->created & SVP_CREATED_MUTEX)
      {
         vcos_mutex_delete(&svp->mutex);
      }

      if (svp->created & SVP_CREATED_SEM)
      {
         vcos_semaphore_delete(&svp->sema);
      }

      vcos_free(svp);
   }
}
