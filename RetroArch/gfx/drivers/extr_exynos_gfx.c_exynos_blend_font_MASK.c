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
struct g2d_image {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct exynos_data {int /*<<< orphan*/  perf; int /*<<< orphan*/  g2d; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  dst; struct g2d_image** src; } ;

/* Variables and functions */
 size_t EXYNOS_IMAGE_FONT ; 
 int /*<<< orphan*/  G2D_OP_INTERPOLATE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct g2d_image*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct exynos_data *pdata)
{
   struct g2d_image *src = pdata->src[EXYNOS_IMAGE_FONT];

#if (EXYNOS_GFX_DEBUG_PERF == 1)
   exynos_perf_g2d(&pdata->perf, true);
#endif

   if (FUNC3(pdata->g2d, src, pdata->dst, 0, 0, src->width,
            src->height, 0, 0, pdata->width, pdata->height,
            G2D_OP_INTERPOLATE) ||
         FUNC2(pdata->g2d))
   {
      FUNC0("[video_exynos]: failed to blend font\n");
      return -1;
   }

#if (EXYNOS_GFX_DEBUG_PERF == 1)
   exynos_perf_g2d(&pdata->perf, false);
#endif

   return 0;
}