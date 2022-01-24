#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_14__ {int /*<<< orphan*/  uri; int /*<<< orphan*/  container; } ;
struct TYPE_13__ {TYPE_1__* priv; } ;
struct TYPE_12__ {int id; } ;
struct TYPE_11__ {int /*<<< orphan*/  uri; } ;
struct TYPE_10__ {TYPE_5__* component; } ;
struct TYPE_9__ {TYPE_6__* module; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_PORT_T ;
typedef  TYPE_3__ MMAL_PARAMETER_URI_T ;
typedef  TYPE_4__ MMAL_PARAMETER_HEADER_T ;
typedef  TYPE_5__ MMAL_COMPONENT_T ;
typedef  TYPE_6__ MMAL_COMPONENT_MODULE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMAL_EINVAL ; 
 int /*<<< orphan*/  MMAL_ENOSYS ; 
#define  MMAL_PARAMETER_URI 128 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC5(MMAL_PORT_T *port, const MMAL_PARAMETER_HEADER_T *param)
{
   MMAL_COMPONENT_T *component = port->component;
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   VC_CONTAINER_STATUS_T cstatus;

   switch(param->id)
   {
   case MMAL_PARAMETER_URI:
      if(module->container)
         return MMAL_EINVAL;

      FUNC2(module->uri, 0, sizeof(module->uri));
      FUNC3(module->uri, ((const MMAL_PARAMETER_URI_T *)param)->uri, sizeof(module->uri)-1 );

      /* Open container */
      module->container = FUNC4(module->uri, &cstatus, 0, 0);
      if(!module->container)
      {
         FUNC0("error opening file %s (%i)", module->uri, cstatus);
         return FUNC1(cstatus);
      }
      return MMAL_SUCCESS;

   default:
      return MMAL_ENOSYS;
   }

   return MMAL_SUCCESS;
}