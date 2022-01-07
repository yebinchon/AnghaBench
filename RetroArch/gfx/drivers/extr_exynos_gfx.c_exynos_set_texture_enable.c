
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_video {int menu_active; } ;



__attribute__((used)) static void exynos_set_texture_enable(void *data, bool state, bool full_screen)
{
   struct exynos_video *vid = data;
   if (vid)
      vid->menu_active = state;
}
