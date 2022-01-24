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
struct exynos_data {int /*<<< orphan*/  g2d; int /*<<< orphan*/ ** src; int /*<<< orphan*/ * dst; } ;

/* Variables and functions */
 unsigned int EXYNOS_IMAGE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct exynos_data *pdata)
{
   unsigned i;

   FUNC0(pdata->dst);

   for (i = 0; i < EXYNOS_IMAGE_COUNT; ++i)
   {
      FUNC0(pdata->src[i]);
      pdata->src[i] = NULL;
   }

   FUNC1(pdata->g2d);
}