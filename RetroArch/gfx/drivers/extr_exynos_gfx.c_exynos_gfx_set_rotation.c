
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_video {unsigned int menu_rotation; } ;



__attribute__((used)) static void exynos_gfx_set_rotation(void *data, unsigned rotation)
{
   struct exynos_video *vid = (struct exynos_video*)data;
   if (vid)
      vid->menu_rotation = rotation;
}
