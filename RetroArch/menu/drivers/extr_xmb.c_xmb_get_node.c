
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xmb_node_t ;
struct TYPE_5__ {unsigned int system_tab_end; int main_menu_node; int add_tab_node; int netplay_tab_node; int favorites_tab_node; int history_tab_node; int video_tab_node; int music_tab_node; int images_tab_node; int settings_tab_node; } ;
typedef TYPE_1__ xmb_handle_t ;
 int xmb_get_system_tab (TYPE_1__*,unsigned int) ;
 int * xmb_get_userdata_from_horizontal_list (TYPE_1__*,unsigned int) ;

__attribute__((used)) static xmb_node_t* xmb_get_node(xmb_handle_t *xmb, unsigned i)
{
   switch (xmb_get_system_tab(xmb, i))
   {
      case 129:
         return &xmb->settings_tab_node;




      case 131:
         return &xmb->music_tab_node;




      case 133:
         return &xmb->history_tab_node;
      case 134:
         return &xmb->favorites_tab_node;




      case 135:
         return &xmb->add_tab_node;
      default:
         if (i > xmb->system_tab_end)
            return xmb_get_userdata_from_horizontal_list(
                  xmb, i - (xmb->system_tab_end + 1));
   }

   return &xmb->main_menu_node;
}
