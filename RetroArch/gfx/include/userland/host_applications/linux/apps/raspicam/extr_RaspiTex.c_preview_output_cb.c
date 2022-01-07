
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ length; int * data; } ;
struct TYPE_9__ {int name; scalar_t__ userdata; } ;
struct TYPE_8__ {int preview_stop; int preview_queue; } ;
typedef TYPE_1__ RASPITEX_STATE ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef TYPE_3__ MMAL_BUFFER_HEADER_T ;


 int mmal_buffer_header_release (TYPE_3__*) ;
 int mmal_queue_put (int ,TYPE_3__*) ;
 int vcos_log_trace (char*,int ) ;

__attribute__((used)) static void preview_output_cb(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buf)
{
   RASPITEX_STATE *state = (RASPITEX_STATE*) port->userdata;

   if (buf->length == 0)
   {
      vcos_log_trace("%s: zero-length buffer => EOS", port->name);
      state->preview_stop = 1;
      mmal_buffer_header_release(buf);
   }
   else if (buf->data == ((void*)0))
   {
      vcos_log_trace("%s: zero buffer handle", port->name);
      mmal_buffer_header_release(buf);
   }
   else
   {



      mmal_queue_put(state->preview_queue, buf);
   }
}
