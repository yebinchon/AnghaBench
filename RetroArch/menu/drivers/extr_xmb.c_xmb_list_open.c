
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int depth; int old_depth; int icon_size; int textures_arrow_alpha; int x; int selection_ptr_old; int selection_buf_old; } ;
typedef TYPE_2__ xmb_handle_t ;
struct TYPE_12__ {int menu_xmb_animation_opening_main_menu; } ;
struct TYPE_14__ {TYPE_1__ uints; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_15__ {int target_value; int tag; int duration; int * subject; int easing_enum; int * cb; } ;
typedef TYPE_4__ menu_animation_ctx_entry_t ;
typedef int file_list_t ;


 int EASING_OUT_BOUNCE ;
 int EASING_OUT_CIRC ;
 int EASING_OUT_EXPO ;
 int EASING_OUT_QUAD ;
 int MENU_LIST_PLAIN ;
 int XMB_DELAY ;
 TYPE_3__* config_get_ptr () ;
 int menu_animation_push (TYPE_4__*) ;
 int * menu_entries_get_selection_buf_ptr (int ) ;
 size_t menu_navigation_get_selection () ;
 scalar_t__ xmb_list_get_size (TYPE_2__*,int ) ;
 int xmb_list_open_horizontal_list (TYPE_2__*) ;
 int xmb_list_open_new (TYPE_2__*,int *,int,size_t) ;
 int xmb_list_open_old (TYPE_2__*,int ,int,int ) ;

__attribute__((used)) static void xmb_list_open(xmb_handle_t *xmb)
{
   menu_animation_ctx_entry_t entry;

   settings_t *settings = config_get_ptr();
   int dir = 0;
   file_list_t *selection_buf = menu_entries_get_selection_buf_ptr(0);
   size_t selection = menu_navigation_get_selection();

   xmb->depth = (int)xmb_list_get_size(xmb, MENU_LIST_PLAIN);

   if (xmb->depth > xmb->old_depth)
      dir = 1;
   else if (xmb->depth < xmb->old_depth)
      dir = -1;
   else
      return;

   xmb_list_open_horizontal_list(xmb);

   xmb_list_open_old(xmb, xmb->selection_buf_old,
         dir, xmb->selection_ptr_old);
   xmb_list_open_new(xmb, selection_buf,
         dir, selection);



   entry.target_value = xmb->icon_size * -(xmb->depth*2-2);
   entry.subject = &xmb->x;

   entry.tag = -1;
   entry.cb = ((void*)0);

   switch (settings->uints.menu_xmb_animation_opening_main_menu)
   {
      case 0:
         entry.easing_enum = EASING_OUT_QUAD;
         entry.duration = XMB_DELAY;
         break;
      case 1:
         entry.easing_enum = EASING_OUT_CIRC;
         entry.duration = XMB_DELAY * 2;
         break;
      case 2:
         entry.easing_enum = EASING_OUT_EXPO;
         entry.duration = XMB_DELAY * 3;
         break;
      case 3:
         entry.easing_enum = EASING_OUT_BOUNCE;
         entry.duration = XMB_DELAY * 4;
         break;
   }

   switch (xmb->depth)
   {
      case 1:
      case 2:
         menu_animation_push(&entry);

         entry.target_value = xmb->depth - 1;
         entry.subject = &xmb->textures_arrow_alpha;

         menu_animation_push(&entry);
         break;
   }

   xmb->old_depth = xmb->depth;
}
