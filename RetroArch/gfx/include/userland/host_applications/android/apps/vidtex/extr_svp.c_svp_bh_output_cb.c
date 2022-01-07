
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ length; int * data; } ;
struct TYPE_10__ {int name; scalar_t__ userdata; } ;
struct TYPE_9__ {int sema; int queue; int wd_timer; } ;
typedef TYPE_1__ SVP_T ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef TYPE_3__ MMAL_BUFFER_HEADER_T ;


 int LOG_ERROR (char*,int ) ;
 int LOG_TRACE (char*,int ) ;
 int SVP_STOP_EOS ;
 int SVP_WATCHDOG_TIMEOUT_MS ;
 int mmal_buffer_header_release (TYPE_3__*) ;
 int mmal_queue_put (int ,TYPE_3__*) ;
 int svp_set_stop (TYPE_1__*,int ) ;
 int vcos_semaphore_post (int *) ;
 int vcos_timer_set (int *,int ) ;

__attribute__((used)) static void svp_bh_output_cb(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buf)
{
   SVP_T *svp = (SVP_T *)port->userdata;

   if (buf->length == 0)
   {
      LOG_TRACE("%s: zero-length buffer => EOS", port->name);
      svp_set_stop(svp, SVP_STOP_EOS);
      mmal_buffer_header_release(buf);
   }
   else if (buf->data == ((void*)0))
   {
      LOG_ERROR("%s: zero buffer handle", port->name);
      mmal_buffer_header_release(buf);
   }
   else
   {

      vcos_timer_set(&svp->wd_timer, SVP_WATCHDOG_TIMEOUT_MS);


      mmal_queue_put(svp->queue, buf);
   }


   vcos_semaphore_post(&svp->sema);
}
