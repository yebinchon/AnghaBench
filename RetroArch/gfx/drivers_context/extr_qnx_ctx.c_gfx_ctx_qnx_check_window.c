
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int egl; } ;
typedef TYPE_1__ qnx_ctx_data_t ;


 int egl_get_video_size (int *,unsigned int*,unsigned int*) ;

__attribute__((used)) static void gfx_ctx_qnx_check_window(void *data, bool *quit,
      bool *resize, unsigned *width, unsigned *height,
      bool is_shutdown)
{
   unsigned new_width, new_height;
   qnx_ctx_data_t *qnx = (qnx_ctx_data_t*)data;

   *quit = 0;





   if (new_width != *width || new_height != *height)
   {
      *width = new_width;
      *height = new_height;
      *resize = 1;
   }


   if (is_shutdown)
      *quit = 1;
}
