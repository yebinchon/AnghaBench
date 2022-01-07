
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct MMAL_PORT_USERDATA_T {int dummy; } ;
struct TYPE_12__ {struct MMAL_PORT_USERDATA_T* userdata; struct TYPE_12__* buffer_size; int buffer_num; struct TYPE_12__* buffer_size_recommended; int buffer_num_recommended; } ;
struct TYPE_11__ {int preview_queue; int preview_pool; TYPE_2__* preview_port; } ;
typedef TYPE_1__ RASPITEX_STATE ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PORT_T ;


 scalar_t__ MMAL_ENOMEM ;
 int MMAL_PARAMETER_ZERO_COPY ;
 scalar_t__ MMAL_SUCCESS ;
 int MMAL_TRUE ;
 int VCOS_FUNCTION ;
 scalar_t__ mmal_port_enable (TYPE_2__*,int ) ;
 scalar_t__ mmal_port_format_commit (TYPE_2__*) ;
 scalar_t__ mmal_port_parameter_set_boolean (TYPE_2__*,int ,int ) ;
 int mmal_port_pool_create (TYPE_2__*,int ,TYPE_2__*) ;
 int mmal_queue_create () ;
 int preview_output_cb ;
 int vcos_log_error (char*) ;
 int vcos_log_trace (char*,int ,TYPE_2__*) ;

int raspitex_configure_preview_port(RASPITEX_STATE *state,
                                    MMAL_PORT_T *preview_port)
{
   MMAL_STATUS_T status;
   vcos_log_trace("%s port %p", VCOS_FUNCTION, preview_port);







   status = mmal_port_parameter_set_boolean(preview_port,
            MMAL_PARAMETER_ZERO_COPY, MMAL_TRUE);
   if (status != MMAL_SUCCESS)
   {
      vcos_log_error("Failed to enable zero copy on camera preview port");
      goto end;
   }

   status = mmal_port_format_commit(preview_port);
   if (status != MMAL_SUCCESS)
   {
      vcos_log_error("camera viewfinder format couldn't be set");
      goto end;
   }




   state->preview_port = preview_port;
   preview_port->buffer_num = preview_port->buffer_num_recommended;
   preview_port->buffer_size = preview_port->buffer_size_recommended;

   vcos_log_trace("Creating buffer pool for GL renderer num %d size %d",
                  preview_port->buffer_num, preview_port->buffer_size);


   state->preview_pool = mmal_port_pool_create(preview_port,
                         preview_port->buffer_num, preview_port->buffer_size);

   if (! state->preview_pool)
   {
      vcos_log_error("Error allocating pool");
      status = MMAL_ENOMEM;
      goto end;
   }


   state->preview_queue = mmal_queue_create();
   if (! state->preview_queue)
   {
      vcos_log_error("Error allocating queue");
      status = MMAL_ENOMEM;
      goto end;
   }


   preview_port->userdata = (struct MMAL_PORT_USERDATA_T*) state;
   status = mmal_port_enable(preview_port, preview_output_cb);
   if (status != MMAL_SUCCESS)
   {
      vcos_log_error("Failed to camera preview port");
      goto end;
   }
end:
   return (status == MMAL_SUCCESS ? 0 : -1);
}
