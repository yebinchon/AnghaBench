
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * renderer_data; TYPE_1__* renderer; } ;
typedef TYPE_2__ font_data_t ;
struct TYPE_4__ {int (* free ) (int *,int) ;} ;


 int free (TYPE_2__*) ;
 int stub1 (int *,int) ;
 int* video_driver_get_threaded () ;

void font_driver_free(void *font_data)
{
   font_data_t *font = (font_data_t*)font_data;

   if (font)
   {
      bool is_threaded = 0;





      if (font->renderer && font->renderer->free)
         font->renderer->free(font->renderer_data, is_threaded);

      font->renderer = ((void*)0);
      font->renderer_data = ((void*)0);

      free(font);
   }
}
