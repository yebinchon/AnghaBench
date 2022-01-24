#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  container; int /*<<< orphan*/  uri; } ;
struct TYPE_15__ {TYPE_1__* priv; } ;
struct TYPE_14__ {int id; int size; } ;
struct TYPE_13__ {int /*<<< orphan*/  str; } ;
struct TYPE_12__ {TYPE_5__* component; } ;
struct TYPE_11__ {TYPE_6__* module; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_PORT_T ;
typedef  TYPE_3__ MMAL_PARAMETER_STRING_T ;
typedef  int /*<<< orphan*/  MMAL_PARAMETER_SEEK_T ;
typedef  TYPE_4__ MMAL_PARAMETER_HEADER_T ;
typedef  TYPE_5__ MMAL_COMPONENT_T ;
typedef  TYPE_6__ MMAL_COMPONENT_MODULE_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_EINVAL ; 
 int /*<<< orphan*/  MMAL_ENOSYS ; 
#define  MMAL_PARAMETER_SEEK 129 
#define  MMAL_PARAMETER_URI 128 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC4(MMAL_PORT_T *port, const MMAL_PARAMETER_HEADER_T *param)
{
   MMAL_COMPONENT_T *component = port->component;
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;

   switch(param->id)
   {
   case MMAL_PARAMETER_URI:
      if(module->container)
         return MMAL_EINVAL;

      FUNC0(module->uri, 0, sizeof(module->uri));
      FUNC3(module->uri, ((const MMAL_PARAMETER_STRING_T *)param)->str, sizeof(module->uri)-1 );
      return FUNC1(component, module->uri);

   case MMAL_PARAMETER_SEEK:
      if(!module->container || param->size < sizeof(MMAL_PARAMETER_SEEK_T))
         return MMAL_EINVAL;

      return FUNC2(component, (const MMAL_PARAMETER_SEEK_T *)param);

   default:
      return MMAL_ENOSYS;
   }

   return MMAL_SUCCESS;
}