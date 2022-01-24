#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct TYPE_10__ {TYPE_1__** input; } ;
struct TYPE_9__ {int /*<<< orphan*/  buffer_size_recommended; int /*<<< orphan*/  buffer_size_min; int /*<<< orphan*/  buffer_num_recommended; int /*<<< orphan*/  buffer_num_min; } ;
struct TYPE_8__ {int id; } ;
struct TYPE_7__ {size_t index; void* buffer_size_recommended; void* buffer_size_min; void* buffer_num_recommended; void* buffer_num_min; TYPE_4__* component; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_1__ MMAL_PORT_T ;
typedef  TYPE_2__ MMAL_PARAMETER_HEADER_T ;
typedef  TYPE_3__ MMAL_PARAMETER_BUFFER_REQUIREMENTS_T ;
typedef  TYPE_4__ MMAL_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_ENOSYS ; 
 void* FUNC0 (void*,int /*<<< orphan*/ ) ; 
#define  MMAL_PARAMETER_BUFFER_REQUIREMENTS 128 
 int /*<<< orphan*/  MMAL_SUCCESS ; 

__attribute__((used)) static MMAL_STATUS_T FUNC1(MMAL_PORT_T *port, const MMAL_PARAMETER_HEADER_T *param)
{
   MMAL_COMPONENT_T *component = port->component;
   MMAL_PORT_T *in = component->input[port->index], *out = component->input[port->index];

   switch (param->id)
   {
   case MMAL_PARAMETER_BUFFER_REQUIREMENTS:
      {
         /* Propagate the requirements to the matching input and output the ports */
         const MMAL_PARAMETER_BUFFER_REQUIREMENTS_T *req = (const MMAL_PARAMETER_BUFFER_REQUIREMENTS_T *)param;
         uint32_t buffer_num_min = FUNC0(port->buffer_num_min, req->buffer_num_min);
         uint32_t buffer_num_recommended = FUNC0(port->buffer_num_recommended, req->buffer_num_recommended);
         uint32_t buffer_size_min = FUNC0(port->buffer_size_min, req->buffer_size_min);
         uint32_t buffer_size_recommended = FUNC0(port->buffer_size_recommended, req->buffer_size_recommended);

         in->buffer_num_min = buffer_num_min;
         in->buffer_num_recommended = buffer_num_recommended;
         in->buffer_size_min = buffer_size_min;
         in->buffer_size_recommended = buffer_size_recommended;
         out->buffer_num_min = buffer_num_min;
         out->buffer_num_recommended = buffer_num_recommended;
         out->buffer_size_min = buffer_size_min;
         out->buffer_size_recommended = buffer_size_recommended;
      }
      return MMAL_SUCCESS;

   default:
      return MMAL_ENOSYS;
   }
}