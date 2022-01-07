
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {size_t selection_ptr_old; size_t system_tab_end; size_t categories_selection_ptr_old; size_t categories_selection_ptr; unsigned int categories_active_idx; int selection_buf_old; } ;
typedef TYPE_3__ stripes_handle_t ;
struct TYPE_13__ {scalar_t__ menu_horizontal_animation; } ;
struct TYPE_16__ {TYPE_1__ bools; } ;
typedef TYPE_4__ settings_t ;
struct TYPE_17__ {size_t size; TYPE_2__* list; } ;
typedef TYPE_5__ file_list_t ;
typedef enum menu_list_type { ____Placeholder_menu_list_type } menu_list_type ;
struct TYPE_14__ {int type; int * label; } ;



 int MENU_ADD_TAB ;
 int MENU_ENUM_LABEL_ADD_TAB ;
 int MENU_ENUM_LABEL_FAVORITES_TAB ;
 int MENU_ENUM_LABEL_HISTORY_TAB ;
 int MENU_ENUM_LABEL_HORIZONTAL_MENU ;
 int MENU_ENUM_LABEL_IMAGES_TAB ;
 int MENU_ENUM_LABEL_MAIN_MENU ;
 int MENU_ENUM_LABEL_MUSIC_TAB ;
 int MENU_ENUM_LABEL_NETPLAY_TAB ;
 int MENU_ENUM_LABEL_SETTINGS_TAB ;
 int MENU_ENUM_LABEL_VIDEO_TAB ;
 int MENU_FAVORITES_TAB ;
 int MENU_HISTORY_TAB ;
 int MENU_IMAGES_TAB ;


 int MENU_MUSIC_TAB ;
 int MENU_NETPLAY_TAB ;
 int MENU_SETTINGS ;
 int MENU_SETTINGS_TAB ;
 int MENU_SETTING_HORIZONTAL_MENU ;
 int MENU_VIDEO_TAB ;
 TYPE_4__* config_get_ptr () ;
 int free (int *) ;
 TYPE_5__* menu_entries_get_menu_stack_ptr (int ) ;
 TYPE_5__* menu_entries_get_selection_buf_ptr (int ) ;
 size_t menu_navigation_get_selection () ;
 int msg_hash_to_str (int ) ;
 void* strdup (int ) ;
 int stripes_calculate_visible_range (TYPE_3__*,unsigned int,size_t,size_t,unsigned int*,unsigned int*) ;
 int stripes_get_system_tab (TYPE_3__*,unsigned int) ;
 int stripes_list_deep_copy (TYPE_5__*,int ,unsigned int,unsigned int) ;
 size_t stripes_list_get_size (TYPE_3__*,int) ;
 int video_driver_get_size (int *,unsigned int*) ;

__attribute__((used)) static void stripes_list_cache(void *data, enum menu_list_type type, unsigned action)
{
   size_t stack_size, list_size;
   stripes_handle_t *stripes = (stripes_handle_t*)data;
   file_list_t *menu_stack = menu_entries_get_menu_stack_ptr(0);
   file_list_t *selection_buf = menu_entries_get_selection_buf_ptr(0);
   size_t selection = menu_navigation_get_selection();
   settings_t *settings = config_get_ptr();

   if (!stripes)
      return;


   if (settings->bools.menu_horizontal_animation)
   {
      unsigned first = 0, last = 0;
      unsigned height = 0;
      video_driver_get_size(((void*)0), &height);


      if (selection >= selection_buf->size)
         selection = selection_buf->size ? selection_buf->size - 1 : 0;

      stripes->selection_ptr_old = selection;

      stripes_calculate_visible_range(stripes, height, selection_buf->size,
            stripes->selection_ptr_old, &first, &last);

      stripes_list_deep_copy(selection_buf, stripes->selection_buf_old, first, last);

      stripes->selection_ptr_old -= first;
      last -= first;
      first = 0;
   }
   else
      stripes->selection_ptr_old = 0;

   list_size = stripes_list_get_size(stripes, 138)
      + stripes->system_tab_end;

   switch (type)
   {
      case 137:
         break;
      case 138:
         stripes->categories_selection_ptr_old = stripes->categories_selection_ptr;

         switch (action)
         {
            case 139:
               if (stripes->categories_selection_ptr == 0)
               {
                  stripes->categories_selection_ptr = list_size;
                  stripes->categories_active_idx = (unsigned)(list_size - 1);
               }
               else
                  stripes->categories_selection_ptr--;
               break;
            default:
               if (stripes->categories_selection_ptr == list_size)
               {
                  stripes->categories_selection_ptr = 0;
                  stripes->categories_active_idx = 1;
               }
               else
                  stripes->categories_selection_ptr++;
               break;
         }

         stack_size = menu_stack->size;

         if (menu_stack->list[stack_size - 1].label)
            free(menu_stack->list[stack_size - 1].label);
         menu_stack->list[stack_size - 1].label = ((void*)0);

         switch (stripes_get_system_tab(stripes, (unsigned)stripes->categories_selection_ptr))
         {
            case 132:
               menu_stack->list[stack_size - 1].label =
                  strdup(msg_hash_to_str(MENU_ENUM_LABEL_MAIN_MENU));
               menu_stack->list[stack_size - 1].type =
                  MENU_SETTINGS;
               break;
            case 129:
               menu_stack->list[stack_size - 1].label =
                  strdup(msg_hash_to_str(MENU_ENUM_LABEL_SETTINGS_TAB));
               menu_stack->list[stack_size - 1].type =
                  MENU_SETTINGS_TAB;
               break;
            case 131:
               menu_stack->list[stack_size - 1].label =
                  strdup(msg_hash_to_str(MENU_ENUM_LABEL_MUSIC_TAB));
               menu_stack->list[stack_size - 1].type =
                  MENU_MUSIC_TAB;
               break;
            case 134:
               menu_stack->list[stack_size - 1].label =
                  strdup(msg_hash_to_str(MENU_ENUM_LABEL_HISTORY_TAB));
               menu_stack->list[stack_size - 1].type =
                  MENU_HISTORY_TAB;
               break;
            case 135:
               menu_stack->list[stack_size - 1].label =
                  strdup(msg_hash_to_str(MENU_ENUM_LABEL_FAVORITES_TAB));
               menu_stack->list[stack_size - 1].type =
                  MENU_FAVORITES_TAB;
               break;
            case 136:
               menu_stack->list[stack_size - 1].label =
                  strdup(msg_hash_to_str(MENU_ENUM_LABEL_ADD_TAB));
               menu_stack->list[stack_size - 1].type =
                  MENU_ADD_TAB;
               break;
            default:
               menu_stack->list[stack_size - 1].label =
                  strdup(msg_hash_to_str(MENU_ENUM_LABEL_HORIZONTAL_MENU));
               menu_stack->list[stack_size - 1].type =
                  MENU_SETTING_HORIZONTAL_MENU;
               break;
         }
         break;
      default:
         break;
   }
}
