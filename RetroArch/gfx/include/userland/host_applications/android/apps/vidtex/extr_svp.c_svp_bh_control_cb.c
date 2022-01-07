
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int cmd; scalar_t__ data; } ;
struct TYPE_9__ {int name; scalar_t__ userdata; } ;
struct TYPE_8__ {int sema; } ;
typedef TYPE_1__ SVP_T ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef TYPE_3__ MMAL_BUFFER_HEADER_T ;


 int LOG_ERROR (char*,int ,int ) ;
 int LOG_TRACE (char*,int ,...) ;


 int SVP_STOP_EOS ;
 int SVP_STOP_ERROR ;
 int mmal_buffer_header_release (TYPE_3__*) ;
 int mmal_status_to_string (int ) ;
 int svp_set_stop (TYPE_1__*,int ) ;
 int vcos_semaphore_post (int *) ;

__attribute__((used)) static void svp_bh_control_cb(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buf)
{
   SVP_T *svp = (SVP_T *)port->userdata;

   switch (buf->cmd)
   {
   case 129:
      LOG_TRACE("%s: EOS", port->name);
      svp_set_stop(svp, SVP_STOP_EOS);
      break;

   case 128:
      LOG_ERROR("%s: MMAL error: %s", port->name,
                mmal_status_to_string(*(MMAL_STATUS_T *)buf->data));
      svp_set_stop(svp, SVP_STOP_ERROR);
      break;

   default:
      LOG_TRACE("%s: buf %p, event %4.4s", port->name, buf, (char *)&buf->cmd);
      break;
   }

   mmal_buffer_header_release(buf);

   vcos_semaphore_post(&svp->sema);
}
