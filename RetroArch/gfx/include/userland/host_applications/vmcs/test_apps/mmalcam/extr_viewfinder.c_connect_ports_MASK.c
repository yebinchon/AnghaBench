#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ buffer_size; scalar_t__ buffer_size_recommended; scalar_t__ buffer_size_min; scalar_t__ buffer_num; scalar_t__ buffer_num_recommended; scalar_t__ buffer_num_min; scalar_t__ is_enabled; int /*<<< orphan*/  format; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_QUEUE_T ;
typedef  TYPE_1__ MMAL_PORT_T ;
typedef  int /*<<< orphan*/  MMAL_POOL_T ;

/* Variables and functions */
 void* FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ MMAL_SUCCESS ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * generic_input_port_cb ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC11(MMAL_PORT_T *output_port, MMAL_PORT_T *input_port, MMAL_QUEUE_T **p_queue, MMAL_POOL_T **p_pool)
{
   MMAL_STATUS_T status;

   status = FUNC2(input_port->format, output_port->format);
   if (status != MMAL_SUCCESS)
      return status;

   status = FUNC8(input_port);
   if (status != MMAL_SUCCESS)
      return status;

   if (FUNC1())
   {
      status = FUNC4(output_port, input_port);
      if (status != MMAL_SUCCESS)
         return status;

      status = FUNC7(output_port, NULL);
      if (status != MMAL_SUCCESS)
         FUNC6(output_port);

      return status;
   }

   /* Non-tunneling setup */
   input_port->buffer_size = input_port->buffer_size_recommended;
   if (input_port->buffer_size < input_port->buffer_size_min)
      input_port->buffer_size = input_port->buffer_size_min;
   input_port->buffer_num = input_port->buffer_num_recommended;
   if (input_port->buffer_num < input_port->buffer_num_min)
      input_port->buffer_num = input_port->buffer_num_min;
   output_port->buffer_size = output_port->buffer_size_recommended;
   if (output_port->buffer_size < output_port->buffer_size_min)
      output_port->buffer_size = output_port->buffer_size_min;
   output_port->buffer_num = output_port->buffer_num_recommended;
   if (output_port->buffer_num < output_port->buffer_num_min)
      output_port->buffer_num = output_port->buffer_num_min;

   input_port->buffer_num = output_port->buffer_num =
      FUNC0(input_port->buffer_num, output_port->buffer_num);
   input_port->buffer_size = output_port->buffer_size =
      FUNC0(input_port->buffer_size, output_port->buffer_size);

   status = FUNC10(output_port, p_queue, p_pool);
   if (status != MMAL_SUCCESS)
      goto error;

   status = FUNC7(input_port, generic_input_port_cb);
   if (status != MMAL_SUCCESS)
      goto error;

   return status;

error:
   if (input_port->is_enabled)
      FUNC5(input_port);
   if (output_port->is_enabled)
      FUNC5(output_port);
   if (*p_pool)
      FUNC3(*p_pool);
   if (*p_queue)
      FUNC9(*p_queue);

   return status;
}