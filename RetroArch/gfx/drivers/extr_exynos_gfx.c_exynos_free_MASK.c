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
struct exynos_data {int /*<<< orphan*/ * device; int /*<<< orphan*/ ** buf; int /*<<< orphan*/ * pages; int /*<<< orphan*/  num_pages; } ;

/* Variables and functions */
 unsigned int EXYNOS_BUFFER_COUNT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_crtc_id ; 
 int /*<<< orphan*/  g_drm_fd ; 

__attribute__((used)) static void FUNC6(struct exynos_data *pdata)
{
   unsigned i;

   /* Disable the CRTC. */
   if (FUNC1(g_drm_fd, g_crtc_id, 0,
            0, 0, NULL, 0, NULL))
      FUNC0("[video_exynos]: failed to disable the CRTC.\n");

   FUNC3(pdata->pages, pdata->num_pages);

   FUNC5(pdata->pages);
   pdata->pages = NULL;

   for (i = 0; i < EXYNOS_BUFFER_COUNT; ++i)
   {
      FUNC2(pdata->buf[i]);
      pdata->buf[i] = NULL;
   }

   FUNC4(pdata->device);
   pdata->device = NULL;
}