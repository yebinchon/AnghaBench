
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int stripes_node_t ;
struct TYPE_5__ {unsigned int system_tab_end; int main_menu_node; int add_tab_node; int netplay_tab_node; int favorites_tab_node; int history_tab_node; int video_tab_node; int music_tab_node; int images_tab_node; int settings_tab_node; } ;
typedef TYPE_1__ stripes_handle_t ;
 int stripes_get_system_tab (TYPE_1__*,unsigned int) ;
 int * stripes_get_userdata_from_horizontal_list (TYPE_1__*,unsigned int) ;

__attribute__((used)) static stripes_node_t* stripes_get_node(stripes_handle_t *stripes, unsigned i)
{
   switch (stripes_get_system_tab(stripes, i))
   {
      case 129:
         return &stripes->settings_tab_node;




      case 131:
         return &stripes->music_tab_node;




      case 133:
         return &stripes->history_tab_node;
      case 134:
         return &stripes->favorites_tab_node;




      case 135:
         return &stripes->add_tab_node;
      default:
         if (i > stripes->system_tab_end)
            return stripes_get_userdata_from_horizontal_list(
                  stripes, i - (stripes->system_tab_end + 1));
   }

   return &stripes->main_menu_node;
}
