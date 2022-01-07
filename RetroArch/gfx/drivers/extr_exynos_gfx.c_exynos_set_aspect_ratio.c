
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_video {int aspect_changed; } ;



__attribute__((used)) static void exynos_set_aspect_ratio(void *data, unsigned aspect_ratio_idx)
{
   struct exynos_video *vid = (struct exynos_video*)data;

   if (!vid)
      return;

   vid->aspect_changed = 1;
}
