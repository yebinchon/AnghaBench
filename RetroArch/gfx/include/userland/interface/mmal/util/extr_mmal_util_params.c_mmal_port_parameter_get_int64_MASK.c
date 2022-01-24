#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  param ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_3__ {int member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {long long member_1; int /*<<< orphan*/  value; int /*<<< orphan*/  hdr; TYPE_1__ member_0; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_PORT_T ;
typedef  TYPE_2__ MMAL_PARAMETER_INT64_T ;

/* Variables and functions */
 scalar_t__ MMAL_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

MMAL_STATUS_T FUNC1(MMAL_PORT_T *port, uint32_t id, int64_t *value)
{
   MMAL_PARAMETER_INT64_T param = {{id, sizeof(param)}, 0LL};
   // coverity[overrun-buffer-val] Structure accessed correctly via size field
   MMAL_STATUS_T status = FUNC0(port, &param.hdr);
   if (status == MMAL_SUCCESS)
      *value = param.value;
   return status;
}