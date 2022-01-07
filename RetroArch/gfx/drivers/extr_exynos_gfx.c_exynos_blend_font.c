
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g2d_image {int height; int width; } ;
struct exynos_data {int perf; int g2d; int height; int width; int dst; struct g2d_image** src; } ;


 size_t EXYNOS_IMAGE_FONT ;
 int G2D_OP_INTERPOLATE ;
 int RARCH_ERR (char*) ;
 int exynos_perf_g2d (int *,int) ;
 scalar_t__ g2d_exec (int ) ;
 scalar_t__ g2d_scale_and_blend (int ,struct g2d_image*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int exynos_blend_font(struct exynos_data *pdata)
{
   struct g2d_image *src = pdata->src[EXYNOS_IMAGE_FONT];





   if (g2d_scale_and_blend(pdata->g2d, src, pdata->dst, 0, 0, src->width,
            src->height, 0, 0, pdata->width, pdata->height,
            G2D_OP_INTERPOLATE) ||
         g2d_exec(pdata->g2d))
   {
      RARCH_ERR("[video_exynos]: failed to blend font\n");
      return -1;
   }





   return 0;
}
