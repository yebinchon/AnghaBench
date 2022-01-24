#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct exynos_video {int /*<<< orphan*/ * font; TYPE_1__* font_driver; int /*<<< orphan*/  perf; int /*<<< orphan*/  num_pages; int /*<<< orphan*/  pages; struct exynos_video* data; } ;
struct exynos_data {int /*<<< orphan*/ * font; TYPE_1__* font_driver; int /*<<< orphan*/  perf; int /*<<< orphan*/  num_pages; int /*<<< orphan*/  pages; struct exynos_data* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct exynos_video*) ; 
 int /*<<< orphan*/  FUNC2 (struct exynos_video*) ; 
 int /*<<< orphan*/  FUNC3 (struct exynos_video*) ; 
 int /*<<< orphan*/  FUNC4 (struct exynos_video*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct exynos_video*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void *data)
{
   struct exynos_video *vid = data;
   struct exynos_data *pdata;

   if (!vid)
      return;

   pdata = vid->data;

   FUNC4(pdata);

   /* Flush pages: One page remains, the one being displayed at this moment. */
   while (FUNC5(pdata->pages, pdata->num_pages) > 1)
      FUNC0(-1);

   FUNC3(pdata);
   FUNC2(pdata);
   FUNC1(pdata);

#if (EXYNOS_GFX_DEBUG_PERF == 1)
   exynos_perf_finish(&pdata->perf);
#endif

   FUNC7(pdata);

   if (vid->font != NULL && vid->font_driver != NULL)
      vid->font_driver->free(vid->font);

   FUNC7(vid);
}