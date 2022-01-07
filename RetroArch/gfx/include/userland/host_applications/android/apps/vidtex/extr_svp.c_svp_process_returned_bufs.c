
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int data; } ;
struct TYPE_11__ {int ctx; int (* video_frame_cb ) (int ,int ) ;} ;
struct TYPE_9__ {int video_frame_count; } ;
struct TYPE_10__ {TYPE_1__ stats; int queue; TYPE_3__ callbacks; } ;
typedef TYPE_2__ SVP_T ;
typedef TYPE_3__ SVP_CALLBACKS_T ;
typedef TYPE_4__ MMAL_BUFFER_HEADER_T ;


 int SVP_STOP_ERROR ;
 int mmal_buffer_header_release (TYPE_4__*) ;
 TYPE_4__* mmal_queue_get (int ) ;
 int stub1 (int ,int ) ;
 int svp_get_stop (TYPE_2__*) ;

__attribute__((used)) static void svp_process_returned_bufs(SVP_T *svp)
{
   SVP_CALLBACKS_T *callbacks = &svp->callbacks;
   MMAL_BUFFER_HEADER_T *buf;

   while ((buf = mmal_queue_get(svp->queue)) != ((void*)0))
   {
      if ((svp_get_stop(svp) & SVP_STOP_ERROR) == 0)
      {
         callbacks->video_frame_cb(callbacks->ctx, buf->data);
      }

      svp->stats.video_frame_count++;
      mmal_buffer_header_release(buf);
   }
}
