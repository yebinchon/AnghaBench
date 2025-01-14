
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int width; unsigned int height; int active; int dragged; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_5__ {int dip_base_unit_size; float content_height; TYPE_1__ scrollbar; scalar_t__ nav_bar_layout_height; } ;
typedef TYPE_2__ materialui_handle_t ;



__attribute__((used)) static void materialui_scrollbar_init(
      materialui_handle_t* mui,
      unsigned width, unsigned height, unsigned header_height)
{
   int view_height = (int)height - (int)header_height - (int)mui->nav_bar_layout_height;
   int scrollbar_height;


   mui->scrollbar.width = mui->dip_base_unit_size / 36;
   mui->scrollbar.height = 0;
   mui->scrollbar.x = 0;
   mui->scrollbar.y = 0;
   mui->scrollbar.active = 0;
   mui->scrollbar.dragged = 0;




   if ((view_height <= 0) ||
       (mui->content_height <= (float)view_height))
      return;


   mui->scrollbar.active = 1;


   scrollbar_height = (int)((float)(view_height * view_height) / mui->content_height);


   scrollbar_height -= (int)mui->scrollbar.width * 2;



   if (scrollbar_height < (int)mui->scrollbar.width)
      scrollbar_height = (int)mui->scrollbar.width;

   mui->scrollbar.height = (unsigned)scrollbar_height;



}
