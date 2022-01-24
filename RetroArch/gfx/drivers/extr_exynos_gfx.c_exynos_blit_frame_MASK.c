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
struct g2d_image {unsigned int stride; } ;
struct exynos_data {unsigned int* blit_params; int /*<<< orphan*/  perf; int /*<<< orphan*/  g2d; int /*<<< orphan*/  dst; TYPE_1__** buf; struct g2d_image** src; } ;
typedef  enum exynos_buffer_type { ____Placeholder_exynos_buffer_type } exynos_buffer_type ;
struct TYPE_4__ {int buf_type; } ;
struct TYPE_3__ {int /*<<< orphan*/  vaddr; } ;

/* Variables and functions */
 size_t EXYNOS_IMAGE_FRAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_2__* defaults ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (struct exynos_data*,int const,unsigned int const) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct g2d_image*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void const*,unsigned int const) ; 

__attribute__((used)) static int FUNC7(struct exynos_data *pdata, const void *frame,
                             unsigned src_pitch)
{
   const enum exynos_buffer_type buf_type = defaults[EXYNOS_IMAGE_FRAME].buf_type;
   const unsigned size   = src_pitch * pdata->blit_params[5];
   struct g2d_image *src = pdata->src[EXYNOS_IMAGE_FRAME];

   if (FUNC3(pdata, buf_type, size) != 0)
      return -1;

#if (EXYNOS_GFX_DEBUG_PERF == 1)
   exynos_perf_memcpy(&pdata->perf, true);
#endif

   /* HACK: Without IOMMU the G2D only works properly between GEM buffers. */
   FUNC6(pdata->buf[buf_type]->vaddr, frame, size);
   src->stride = src_pitch;

#if (EXYNOS_GFX_DEBUG_PERF == 1)
   exynos_perf_memcpy(&pdata->perf, false);
#endif

#if (EXYNOS_GFX_DEBUG_PERF == 1)
   exynos_perf_g2d(&pdata->perf, true);
#endif

   if (FUNC4(pdata->g2d, src, pdata->dst, 0, 0,
            pdata->blit_params[4], pdata->blit_params[5],
            pdata->blit_params[0], pdata->blit_params[1],
            pdata->blit_params[2], pdata->blit_params[3], 0) ||
         FUNC5(pdata->g2d))
   {
      FUNC0("[video_exynos]: failed to blit frame.\n");
      return -1;
   }

#if (EXYNOS_GFX_DEBUG_PERF == 1)
   exynos_perf_g2d(&pdata->perf, false);
#endif

   return 0;
}