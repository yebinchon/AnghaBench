
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g2d_image {unsigned int stride; } ;
struct exynos_data {unsigned int* blit_params; int perf; int g2d; int dst; TYPE_1__** buf; struct g2d_image** src; } ;
typedef enum exynos_buffer_type { ____Placeholder_exynos_buffer_type } exynos_buffer_type ;
struct TYPE_4__ {int buf_type; } ;
struct TYPE_3__ {int vaddr; } ;


 size_t EXYNOS_IMAGE_FRAME ;
 int RARCH_ERR (char*) ;
 TYPE_2__* defaults ;
 int exynos_perf_g2d (int *,int) ;
 int exynos_perf_memcpy (int *,int) ;
 scalar_t__ exynos_realloc_buffer (struct exynos_data*,int const,unsigned int const) ;
 scalar_t__ g2d_copy_with_scale (int ,struct g2d_image*,int ,int ,int ,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,int ) ;
 scalar_t__ g2d_exec (int ) ;
 int memcpy_neon (int ,void const*,unsigned int const) ;

__attribute__((used)) static int exynos_blit_frame(struct exynos_data *pdata, const void *frame,
                             unsigned src_pitch)
{
   const enum exynos_buffer_type buf_type = defaults[EXYNOS_IMAGE_FRAME].buf_type;
   const unsigned size = src_pitch * pdata->blit_params[5];
   struct g2d_image *src = pdata->src[EXYNOS_IMAGE_FRAME];

   if (exynos_realloc_buffer(pdata, buf_type, size) != 0)
      return -1;






   memcpy_neon(pdata->buf[buf_type]->vaddr, frame, size);
   src->stride = src_pitch;
   if (g2d_copy_with_scale(pdata->g2d, src, pdata->dst, 0, 0,
            pdata->blit_params[4], pdata->blit_params[5],
            pdata->blit_params[0], pdata->blit_params[1],
            pdata->blit_params[2], pdata->blit_params[3], 0) ||
         g2d_exec(pdata->g2d))
   {
      RARCH_ERR("[video_exynos]: failed to blit frame.\n");
      return -1;
   }





   return 0;
}
