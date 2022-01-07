
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_11__ {int name; } ;
struct TYPE_10__ {int ctx; int (* stop_cb ) (int ,scalar_t__) ;} ;
struct TYPE_9__ {int sema; TYPE_1__* out_pool; TYPE_3__ callbacks; TYPE_4__* video_output; } ;
struct TYPE_8__ {int queue; } ;
typedef TYPE_2__ SVP_T ;
typedef TYPE_3__ SVP_CALLBACKS_T ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_4__ MMAL_PORT_T ;
typedef int MMAL_BUFFER_HEADER_T ;


 int LOG_ERROR (char*,int ) ;
 int LOG_TRACE (char*,unsigned int) ;
 scalar_t__ MMAL_SUCCESS ;
 scalar_t__ mmal_port_send_buffer (TYPE_4__*,int *) ;
 int * mmal_queue_get (int ) ;
 int stub1 (int ,scalar_t__) ;
 scalar_t__ svp_get_stop (TYPE_2__*) ;
 int svp_process_returned_bufs (TYPE_2__*) ;
 int vcos_semaphore_wait (int *) ;

__attribute__((used)) static void *svp_worker(void *arg)
{
   SVP_T *svp = arg;
   MMAL_PORT_T *video_output = svp->video_output;
   SVP_CALLBACKS_T *callbacks = &svp->callbacks;
   MMAL_BUFFER_HEADER_T *buf;
   MMAL_STATUS_T st;
   uint32_t stop;

   while (svp_get_stop(svp) == 0)
   {

      while ((buf = mmal_queue_get(svp->out_pool->queue)) != ((void*)0))
      {
         st = mmal_port_send_buffer(video_output, buf);
         if (st != MMAL_SUCCESS)
         {
            LOG_ERROR("Failed to send buffer to %s", video_output->name);
         }
      }


      svp_process_returned_bufs(svp);


      vcos_semaphore_wait(&svp->sema);
   }


   svp_process_returned_bufs(svp);


   stop = svp_get_stop(svp);
   LOG_TRACE("Worker thread exiting: stop=0x%x", (unsigned)stop);
   callbacks->stop_cb(callbacks->ctx, stop);

   return ((void*)0);
}
