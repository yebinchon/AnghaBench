
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_device {int dummy; } ;
struct exynos_bo {int vaddr; } ;


 int RARCH_ERR (char*) ;
 struct exynos_bo* exynos_bo_create (struct exynos_device*,unsigned int,unsigned int const) ;
 int exynos_bo_destroy (struct exynos_bo*) ;
 int exynos_bo_map (struct exynos_bo*) ;
 int memset (int ,int ,unsigned int) ;

__attribute__((used)) static struct exynos_bo *exynos_create_mapped_buffer(
      struct exynos_device *dev, unsigned size)
{
   const unsigned flags = 0;
   struct exynos_bo *buf = exynos_bo_create(dev, size, flags);

   if (!buf)
   {
      RARCH_ERR("[video_exynos]: failed to create temp buffer object\n");
      return ((void*)0);
   }

   if (!exynos_bo_map(buf))
   {
      RARCH_ERR("[video_exynos]: failed to map temp buffer object\n");
      exynos_bo_destroy(buf);
      return ((void*)0);
   }

   memset(buf->vaddr, 0, size);

   return buf;
}
