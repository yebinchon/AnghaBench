
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ should_resize; } ;
typedef TYPE_1__ gl_t ;



__attribute__((used)) static void gfx_ctx_ps3_check_window(void *data, bool *quit,
      bool *resize, unsigned *width, unsigned *height,
      bool is_shutdown)
{
   gl_t *gl = data;

   *quit = 0;
   *resize = 0;

   if (gl->should_resize)
      *resize = 1;
}
