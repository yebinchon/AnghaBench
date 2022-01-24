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
struct exynos_device {int dummy; } ;
struct exynos_bo {int /*<<< orphan*/  vaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct exynos_bo* FUNC1 (struct exynos_device*,unsigned int,unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (struct exynos_bo*) ; 
 int /*<<< orphan*/  FUNC3 (struct exynos_bo*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static struct exynos_bo *FUNC5(
      struct exynos_device *dev, unsigned size)
{
   const unsigned flags = 0;
   struct exynos_bo *buf = FUNC1(dev, size, flags);

   if (!buf)
   {
      FUNC0("[video_exynos]: failed to create temp buffer object\n");
      return NULL;
   }

   if (!FUNC3(buf))
   {
      FUNC0("[video_exynos]: failed to map temp buffer object\n");
      FUNC2(buf);
      return NULL;
   }

   FUNC4(buf->vaddr, 0, size);

   return buf;
}