
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * data; scalar_t__ height; scalar_t__ width; } ;


 int free (int *) ;
 TYPE_1__ rgui_frame_buf ;

__attribute__((used)) static void rgui_framebuffer_free(void)
{
   rgui_frame_buf.width = 0;
   rgui_frame_buf.height = 0;

   if (rgui_frame_buf.data)
      free(rgui_frame_buf.data);
   rgui_frame_buf.data = ((void*)0);
}
