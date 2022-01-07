
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EGL_MAX_CONFIGS ;
 scalar_t__ less_than (int,int,int,int,int,int) ;

void egl_config_sort(int *ids, bool use_red, bool use_green, bool use_blue, bool use_alpha)
{
   int i, j;

   for (i = 1; i < EGL_MAX_CONFIGS; i++)
      for (j = 0; j < EGL_MAX_CONFIGS - i; j++)
         if (less_than(ids[j + 1], ids[j], use_red, use_green, use_blue, use_alpha)) {
            int temp = ids[j];
            ids[j] = ids[j + 1];
            ids[j + 1] = temp;
         }
}
