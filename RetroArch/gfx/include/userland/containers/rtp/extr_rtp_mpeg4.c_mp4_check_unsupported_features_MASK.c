#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  VC_CONTAINER_TRACK_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
typedef  int /*<<< orphan*/  VC_CONTAINERS_LIST_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC3(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_T *track,
      const VC_CONTAINERS_LIST_T *params)
{
   uint32_t u32_unused;

   FUNC1(p_ctx);
   FUNC1(track);

   /* Limitation: RAP flag not yet supported */
   if (FUNC2(params, "randomAccessIndication", &u32_unused))
   {
      FUNC0(p_ctx, "MPEG-4: random access not supported");
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   }

   /* Limitation: interleaving not yet supported */
   if (FUNC2(params, "maxDisplacement", &u32_unused) ||
         FUNC2(params, "de-interleaveBufferSize", &u32_unused))
   {
      FUNC0(p_ctx, "MPEG-4: interleaved packetization not supported");
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   }

   /* Limitation: system streams not supported */
   if (FUNC2(params, "streamStateIndication", &u32_unused))
   {
      FUNC0(p_ctx, "MPEG-4: system streams not supported");
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   }

   return VC_CONTAINER_SUCCESS;
}