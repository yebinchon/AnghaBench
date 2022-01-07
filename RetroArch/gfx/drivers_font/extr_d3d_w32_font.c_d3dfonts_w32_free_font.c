
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ font; } ;
typedef TYPE_1__ d3dfonts_t ;


 int d3d9x_font_release (scalar_t__) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void d3dfonts_w32_free_font(void *data, bool is_threaded)
{
   d3dfonts_t *d3dfonts = (d3dfonts_t*)data;

   if (!d3dfonts)
      return;

   if (d3dfonts->font)
      d3d9x_font_release(d3dfonts->font);

   free(d3dfonts);
}
