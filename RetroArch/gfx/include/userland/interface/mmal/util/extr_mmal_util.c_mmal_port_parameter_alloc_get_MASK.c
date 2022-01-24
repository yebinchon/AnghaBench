#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_6__ {int id; int size; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_PORT_T ;
typedef  TYPE_1__ MMAL_PARAMETER_HEADER_T ;

/* Variables and functions */
 scalar_t__ MMAL_ENOMEM ; 
 scalar_t__ MMAL_ENOSPC ; 
 scalar_t__ MMAL_ENOSYS ; 
 scalar_t__ MMAL_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

MMAL_PARAMETER_HEADER_T *FUNC3(MMAL_PORT_T *port,
   uint32_t id, uint32_t size, MMAL_STATUS_T *p_status)
{
   MMAL_PARAMETER_HEADER_T *param = NULL;
   MMAL_STATUS_T status = MMAL_ENOSYS;

   if (size < sizeof(MMAL_PARAMETER_HEADER_T))
      size = sizeof(MMAL_PARAMETER_HEADER_T);

   if ((param = FUNC1(1, size, "mmal_port_param_get")) == NULL)
   {
      status = MMAL_ENOMEM;
      goto error;
   }

   param->id = id;
   param->size = size;

   if ((status = FUNC0(port, param)) == MMAL_ENOSPC)
   {
      /* We need to reallocate to get enough space for all parameter data */
      size = param->size;
      FUNC2(param);
      if ((param = FUNC1(1, size, "mmal_port_param_get")) == NULL)
      {
         status = MMAL_ENOMEM;
         goto error;
      }

      /* Now retrieve it again */
      param->id = id;
      param->size = size;
      status = FUNC0(port, param);
   }

   if (status != MMAL_SUCCESS)
      goto error;

end:
   if (p_status) *p_status = status;
   return param;
error:
   if (param) FUNC2(param);
   param = NULL;
   goto end;
}