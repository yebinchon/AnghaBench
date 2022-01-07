
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g2d_image {int height; int width; } ;
struct g2d_context {int dummy; } ;


 int RARCH_ERR (char*) ;
 int g2d_exec (struct g2d_context*) ;
 int g2d_solid_fill (struct g2d_context*,struct g2d_image*,int ,int ,int ,int ) ;

__attribute__((used)) static int exynos_clear_buffer(struct g2d_context *g2d, struct g2d_image *img)
{
   int ret = g2d_solid_fill(g2d, img, 0, 0, img->width, img->height);

   if (ret == 0)
      ret = g2d_exec(g2d);

   if (ret != 0)
      RARCH_ERR("[video_exynos]: failed to clear buffer using G2D\n");

   return ret;
}
