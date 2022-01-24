#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int input_num; int output_num; int clock_num; int /*<<< orphan*/ ** clock; int /*<<< orphan*/ ** output; int /*<<< orphan*/ ** input; int /*<<< orphan*/ * control; } ;
typedef  int /*<<< orphan*/  MMAL_PORT_T ;
typedef  TYPE_1__ MMAL_COMPONENT_T ;

/* Variables and functions */
#define  MMAL_PORT_TYPE_CLOCK 131 
#define  MMAL_PORT_TYPE_CONTROL 130 
#define  MMAL_PORT_TYPE_INPUT 129 
#define  MMAL_PORT_TYPE_OUTPUT 128 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static MMAL_PORT_T *FUNC1(MMAL_COMPONENT_T *component, uint32_t type, uint32_t number)
{
   switch (type)
   {
      case MMAL_PORT_TYPE_CONTROL:
         FUNC0(number == 0);
         return component->control;
      case MMAL_PORT_TYPE_INPUT:
         FUNC0(number < component->input_num);
         return component->input[number];
      case MMAL_PORT_TYPE_OUTPUT:
         FUNC0(number < component->output_num);
         return component->output[number];
      case MMAL_PORT_TYPE_CLOCK:
         FUNC0(number < component->clock_num);
         return component->clock[number];
   }

   return NULL;
}