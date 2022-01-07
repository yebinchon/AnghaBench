
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int menu_entry_t ;
struct TYPE_5__ {float content_height; scalar_t__ scroll_y; scalar_t__ nav_bar_layout_height; } ;
typedef TYPE_1__ materialui_handle_t ;


 int MENU_ACTION_SCROLL_DOWN ;
 int MENU_ACTION_SCROLL_UP ;
 int MUI_ANIM_DURATION_SCROLL ;
 int materialui_animate_scroll (TYPE_1__*,scalar_t__,int ) ;
 int materialui_menu_entry_action (TYPE_1__*,int *,size_t,int ) ;

__attribute__((used)) static int materialui_pointer_up_swipe_horz_plain_list(
      materialui_handle_t *mui, menu_entry_t *entry,
      unsigned height, unsigned header_height, unsigned y,
      size_t selection, bool scroll_up)
{


   if (y < (height >> 1))
      return materialui_menu_entry_action(
            mui, entry, selection,
            scroll_up ? MENU_ACTION_SCROLL_UP : MENU_ACTION_SCROLL_DOWN);



   else
   {
      float content_height_fraction = mui->content_height * 0.1f;
      float display_height = (int)height - (int)header_height - (int)mui->nav_bar_layout_height;
      float scroll_offset = (display_height > content_height_fraction) ?
            display_height : content_height_fraction;

      materialui_animate_scroll(
            mui,
            mui->scroll_y + (scroll_up ? (scroll_offset * -1.0f) : scroll_offset),
            MUI_ANIM_DURATION_SCROLL);
   }

   return 0;
}
