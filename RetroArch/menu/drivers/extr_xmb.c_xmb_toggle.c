
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int depth; scalar_t__ alpha; } ;
typedef TYPE_1__ xmb_handle_t ;
struct TYPE_7__ {int duration; float target_value; int tag; int * cb; int easing_enum; scalar_t__* subject; } ;
typedef TYPE_2__ menu_animation_ctx_entry_t ;


 int EASING_OUT_QUAD ;
 int MENU_ENTRIES_CTL_NEEDS_REFRESH ;
 int MENU_LIST_PLAIN ;
 int RARCH_MENU_CTL_SET_PREVENT_POPULATE ;
 int RARCH_MENU_CTL_UNSET_PREVENT_POPULATE ;
 int XMB_DELAY ;
 int menu_animation_push (TYPE_2__*) ;
 int menu_driver_ctl (int ,int *) ;
 int menu_entries_ctl (int ,int *) ;
 scalar_t__ xmb_list_get_size (TYPE_1__*,int ) ;
 int xmb_toggle_horizontal_list (TYPE_1__*) ;

__attribute__((used)) static void xmb_toggle(void *userdata, bool menu_on)
{
   menu_animation_ctx_entry_t entry;
   bool tmp = 0;
   xmb_handle_t *xmb = (xmb_handle_t*)userdata;

   if (!xmb)
      return;

   xmb->depth = (int)xmb_list_get_size(xmb, MENU_LIST_PLAIN);

   if (!menu_on)
   {
      xmb->alpha = 0;
      return;
   }

   entry.duration = XMB_DELAY * 2;
   entry.target_value = 1.0f;
   entry.subject = &xmb->alpha;
   entry.easing_enum = EASING_OUT_QUAD;

   entry.tag = -1;
   entry.cb = ((void*)0);

   menu_animation_push(&entry);

   tmp = !menu_entries_ctl(MENU_ENTRIES_CTL_NEEDS_REFRESH, ((void*)0));

   if (tmp)
      menu_driver_ctl(RARCH_MENU_CTL_SET_PREVENT_POPULATE, ((void*)0));
   else
      menu_driver_ctl(RARCH_MENU_CTL_UNSET_PREVENT_POPULATE, ((void*)0));

   xmb_toggle_horizontal_list(xmb);
}
