#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct MMAL_PORT_USERDATA_T {int dummy; } ;
struct TYPE_12__ {struct MMAL_PORT_USERDATA_T* userdata; struct TYPE_12__* buffer_size; int /*<<< orphan*/  buffer_num; struct TYPE_12__* buffer_size_recommended; int /*<<< orphan*/  buffer_num_recommended; } ;
struct TYPE_11__ {int /*<<< orphan*/  preview_queue; int /*<<< orphan*/  preview_pool; TYPE_2__* preview_port; } ;
typedef  TYPE_1__ RASPITEX_STATE ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_PORT_T ;

/* Variables and functions */
 scalar_t__ MMAL_ENOMEM ; 
 int /*<<< orphan*/  MMAL_PARAMETER_ZERO_COPY ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  MMAL_TRUE ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  preview_output_cb ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,TYPE_2__*) ; 

int FUNC7(RASPITEX_STATE *state,
                                    MMAL_PORT_T *preview_port)
{
   MMAL_STATUS_T status;
   FUNC6("%s port %p", VCOS_FUNCTION, preview_port);

   /* Enable ZERO_COPY mode on the preview port which instructs MMAL to only
    * pass the 4-byte opaque buffer handle instead of the contents of the opaque
    * buffer.
    * The opaque handle is resolved on VideoCore by the GL driver when the EGL
    * image is created.
    */
   status = FUNC2(preview_port,
            MMAL_PARAMETER_ZERO_COPY, MMAL_TRUE);
   if (status != MMAL_SUCCESS)
   {
      FUNC5("Failed to enable zero copy on camera preview port");
      goto end;
   }

   status = FUNC1(preview_port);
   if (status != MMAL_SUCCESS)
   {
      FUNC5("camera viewfinder format couldn't be set");
      goto end;
   }

   /* For GL a pool of opaque buffer handles must be allocated in the client.
    * These buffers are used to create the EGL images.
    */
   state->preview_port = preview_port;
   preview_port->buffer_num = preview_port->buffer_num_recommended;
   preview_port->buffer_size = preview_port->buffer_size_recommended;

   FUNC6("Creating buffer pool for GL renderer num %d size %d",
                  preview_port->buffer_num, preview_port->buffer_size);

   /* Pool + queue to hold preview frames */
   state->preview_pool = FUNC3(preview_port,
                         preview_port->buffer_num, preview_port->buffer_size);

   if (! state->preview_pool)
   {
      FUNC5("Error allocating pool");
      status = MMAL_ENOMEM;
      goto end;
   }

   /* Place filled buffers from the preview port in a queue to render */
   state->preview_queue = FUNC4();
   if (! state->preview_queue)
   {
      FUNC5("Error allocating queue");
      status = MMAL_ENOMEM;
      goto end;
   }

   /* Enable preview port callback */
   preview_port->userdata = (struct MMAL_PORT_USERDATA_T*) state;
   status = FUNC0(preview_port, preview_output_cb);
   if (status != MMAL_SUCCESS)
   {
      FUNC5("Failed to camera preview port");
      goto end;
   }
end:
   return (status == MMAL_SUCCESS ? 0 : -1);
}