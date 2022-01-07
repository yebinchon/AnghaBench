
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int width; unsigned int height; } ;
typedef TYPE_1__ CellVideoOutResolution ;


 int cellVideoOutGetResolution (unsigned int,TYPE_1__*) ;

__attribute__((used)) static void gfx_ctx_ps3_get_resolution(unsigned idx,
      unsigned *width, unsigned *height)
{
   CellVideoOutResolution resolution;
   cellVideoOutGetResolution(idx, &resolution);

   *width = resolution.width;
   *height = resolution.height;
}
