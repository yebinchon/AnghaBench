#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_9__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ VC_CONTAINER_TRACK_T ;
struct TYPE_10__ {scalar_t__ payload_type; } ;
typedef  TYPE_3__ VC_CONTAINER_TRACK_MODULE_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
typedef  int /*<<< orphan*/  VC_CONTAINERS_LIST_T ;
struct TYPE_8__ {TYPE_3__* module; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/  const*,scalar_t__) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T  FUNC6(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_T *track,
      const VC_CONTAINERS_LIST_T *param_list,
      uint32_t payload_type)
{
   VC_CONTAINER_TRACK_MODULE_T *module = track->priv->module;
   VC_CONTAINER_STATUS_T status;

   if (FUNC1(payload_type))
      status = FUNC4(p_ctx, track, param_list, payload_type);
   else if (FUNC2(payload_type))
      status = FUNC5(p_ctx, track, param_list, payload_type);
   else if (FUNC0(payload_type))
      status = FUNC3(p_ctx, track, param_list);
   else
      status = VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   module->payload_type = (uint8_t)payload_type;

   return status;
}