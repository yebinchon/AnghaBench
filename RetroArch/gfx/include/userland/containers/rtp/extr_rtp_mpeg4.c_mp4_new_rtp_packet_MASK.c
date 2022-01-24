#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  payload; scalar_t__ extra; } ;
typedef  TYPE_1__ VC_CONTAINER_TRACK_MODULE_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_BITS_T ;
struct TYPE_5__ {int auxiliary_length; scalar_t__ dts_delta_length; scalar_t__ cts_delta_length; scalar_t__ index_length; scalar_t__ size_length; int /*<<< orphan*/  au_headers; } ;
typedef  TYPE_2__ MP4_PAYLOAD_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_FORMAT_INVALID ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC6(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_MODULE_T *t_module)
{
   VC_CONTAINER_BITS_T *payload = &t_module->payload;
   MP4_PAYLOAD_T *extra = (MP4_PAYLOAD_T *)t_module->extra;
   VC_CONTAINER_BITS_T *au_headers = &extra->au_headers;

   /* There will be an AU header section if any of its fields are non-zero. */
   if (extra->size_length || extra->index_length || extra->cts_delta_length || extra->dts_delta_length)
   {
      uint32_t au_headers_length;

      /* Calculate how far to advance the payload, to get past the AU headers */
      au_headers_length = FUNC2(p_ctx, payload, 16, "AU headers length");
      au_headers_length = FUNC4(au_headers_length); /* Round up to bytes */

      /* Record where the AU headers are in the payload */
      FUNC1(p_ctx, au_headers, FUNC0(p_ctx, payload), au_headers_length);
      FUNC3(p_ctx, &t_module->payload, au_headers_length, "Move payload past AU headers");
   }

   /* Skip the auxiliary section, if present */
   if (extra->auxiliary_length)
   {
      uint32_t auxiliary_data_size;

      auxiliary_data_size = FUNC2(p_ctx, payload, extra->auxiliary_length, "Auxiliary length");
      auxiliary_data_size = FUNC4(auxiliary_data_size); /* Round up to bytes */
      FUNC3(p_ctx, payload, auxiliary_data_size, "Auxiliary data");
   }

   return FUNC5(p_ctx, payload) ? VC_CONTAINER_SUCCESS : VC_CONTAINER_ERROR_FORMAT_INVALID;
}