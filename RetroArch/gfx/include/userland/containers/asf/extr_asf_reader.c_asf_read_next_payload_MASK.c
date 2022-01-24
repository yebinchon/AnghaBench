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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_3__ {scalar_t__ subpayload_size; scalar_t__ payload_size; int /*<<< orphan*/  current_offset; int /*<<< orphan*/  media_object_off; int /*<<< orphan*/  current_payload; } ;
typedef  TYPE_1__ ASF_PACKET_STATE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC3( VC_CONTAINER_T *p_ctx,
   ASF_PACKET_STATE *p_state, uint8_t *p_data, uint32_t *pi_size )
{
   uint32_t subpayload_size = p_state->subpayload_size;

   if(p_data && *pi_size < subpayload_size) subpayload_size = *pi_size;

   if(!p_state->subpayload_size)
      return VC_CONTAINER_SUCCESS;

   p_state->payload_size -= subpayload_size;
   if(!p_state->payload_size) p_state->current_payload++;
   p_state->subpayload_size -= subpayload_size;
   p_state->media_object_off += subpayload_size;

   if(p_data) *pi_size = FUNC0(p_ctx, p_data, subpayload_size);
   else *pi_size = FUNC1(p_ctx, subpayload_size);

   p_state->current_offset += subpayload_size;

   if(*pi_size!= subpayload_size)
      return FUNC2(p_ctx);

   return VC_CONTAINER_SUCCESS;
}