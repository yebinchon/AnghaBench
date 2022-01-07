
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct font_params {int dummy; } ;



__attribute__((used)) static void exynos_set_osd_msg(void *data, const char *msg,
      const struct font_params *params)
{
   (void)data;
   (void)msg;
   (void)params;
}
