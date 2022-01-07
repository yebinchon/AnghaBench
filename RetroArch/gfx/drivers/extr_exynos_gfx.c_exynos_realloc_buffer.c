
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct exynos_data {TYPE_1__** src; struct exynos_bo** buf; int device; } ;
struct exynos_bo {unsigned int size; int handle; } ;
typedef enum exynos_buffer_type { ____Placeholder_exynos_buffer_type } exynos_buffer_type ;
struct TYPE_4__ {int buf_type; } ;
struct TYPE_3__ {int * bo; } ;


 unsigned int EXYNOS_IMAGE_COUNT ;
 int RARCH_ERR (char*) ;
 int RARCH_LOG (char*,int ,unsigned int,unsigned int) ;
 TYPE_2__* defaults ;
 int exynos_bo_destroy (struct exynos_bo*) ;
 int exynos_buffer_name (int) ;
 struct exynos_bo* exynos_create_mapped_buffer (int ,unsigned int) ;

__attribute__((used)) static int exynos_realloc_buffer(struct exynos_data *pdata,
      enum exynos_buffer_type type, unsigned size)
{
   struct exynos_bo *buf = pdata->buf[type];

   if (!buf)
      return -1;

   if (size > buf->size)
   {
      unsigned i;






      exynos_bo_destroy(buf);
      buf = exynos_create_mapped_buffer(pdata->device, size);

      if (!buf)
      {
         RARCH_ERR("[video_exynos]: reallocation failed\n");
         return -1;
      }

      pdata->buf[type] = buf;


      for (i = 0; i < EXYNOS_IMAGE_COUNT; ++i)
      {
         if (defaults[i].buf_type == type)
            pdata->src[i]->bo[0] = buf->handle;
      }
   }

   return 0;
}
