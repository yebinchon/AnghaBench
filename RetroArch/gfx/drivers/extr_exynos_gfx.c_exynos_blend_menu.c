
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g2d_image {int height; int width; } ;
struct exynos_data {int perf; int g2d; int * blit_params; int dst; struct g2d_image** src; } ;


 size_t EXYNOS_IMAGE_MENU ;
 int G2D_OP_INTERPOLATE ;
 int RARCH_ERR (char*) ;
 int exynos_perf_g2d (int *,int) ;
 scalar_t__ g2d_exec (int ) ;
 scalar_t__ g2d_scale_and_blend (int ,struct g2d_image*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int exynos_blend_menu(struct exynos_data *pdata,
                             unsigned rotation)
{
   struct g2d_image *src = pdata->src[EXYNOS_IMAGE_MENU];





   if (g2d_scale_and_blend(pdata->g2d, src, pdata->dst, 0, 0,
            src->width, src->height, pdata->blit_params[0],
            pdata->blit_params[1], pdata->blit_params[2],
            pdata->blit_params[3], G2D_OP_INTERPOLATE) ||
         g2d_exec(pdata->g2d))
   {
      RARCH_ERR("[video_exynos]: failed to blend menu.\n");
      return -1;
   }





   return 0;
}
