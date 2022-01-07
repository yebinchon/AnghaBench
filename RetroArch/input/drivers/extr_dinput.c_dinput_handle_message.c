
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pointer_status {void* pointer_id; } ;
struct dinput_input {int mouse_wu; int mouse_wd; int mouse_hwu; int mouse_hwd; int joypad_driver_name; TYPE_2__* joypad; int window_pos_y; int window_pos_x; } ;
typedef int WPARAM ;
typedef int UINT ;
struct TYPE_4__ {int (* destroy ) () ;} ;
struct TYPE_3__ {int dbch_devicetype; } ;
typedef TYPE_1__* PDEV_BROADCAST_HDR ;
typedef int PDEV_BROADCAST_DEVICEINTERFACE ;
typedef int LPARAM ;


 int DBT_DEVICEARRIVAL ;
 int DBT_DEVICEREMOVECOMPLETE ;
 int DBT_DEVTYP_DEVICEINTERFACE ;
 void* GET_POINTERID_WPARAM (int ) ;
 int GET_X_LPARAM (int ) ;
 int GET_Y_LPARAM (int ) ;
 scalar_t__ HIWORD (int ) ;
 int RARCH_ERR (char*) ;







 int dinput_add_pointer (struct dinput_input*,struct pointer_status*) ;
 int dinput_delete_pointer (struct dinput_input*,int) ;
 struct pointer_status* dinput_find_pointer (struct dinput_input*,int) ;
 int dinput_pointer_store_pos (struct pointer_status*,int ) ;
 TYPE_2__* input_joypad_init_driver (int ,struct dinput_input*) ;
 scalar_t__ malloc (int) ;
 int stub1 () ;

bool dinput_handle_message(void *data, UINT message, WPARAM wParam, LPARAM lParam)
{
   struct dinput_input *di = (struct dinput_input *)data;
   switch (message)
   {
      case 132:
         di->window_pos_x = GET_X_LPARAM(lParam);
         di->window_pos_y = GET_Y_LPARAM(lParam);
         break;
      case 130:
         {
            struct pointer_status *new_pointer =
               (struct pointer_status *)malloc(sizeof(struct pointer_status));

            if (!new_pointer)
            {
               RARCH_ERR("[DINPUT]: dinput_handle_message: pointer allocation in WM_POINTERDOWN failed.\n");
               return 0;
            }

            new_pointer->pointer_id = GET_POINTERID_WPARAM(wParam);
            dinput_pointer_store_pos(new_pointer, lParam);
            dinput_add_pointer(di, new_pointer);
            return 1;
         }
      case 129:
         {
            int pointer_id = GET_POINTERID_WPARAM(wParam);
            dinput_delete_pointer(di, pointer_id);
            return 1;
         }
      case 128:
         {
            int pointer_id = GET_POINTERID_WPARAM(wParam);
            struct pointer_status *pointer = dinput_find_pointer(di, pointer_id);
            if (pointer)
               dinput_pointer_store_pos(pointer, lParam);
            return 1;
         }
      case 134:
         break;
      case 131:
            if (((short) HIWORD(wParam))/120 > 0)
               di->mouse_wu = 1;
            if (((short) HIWORD(wParam))/120 < 0)
               di->mouse_wd = 1;
         break;
      case 133:
         {
            if (((short) HIWORD(wParam))/120 > 0)
               di->mouse_hwu = 1;
            if (((short) HIWORD(wParam))/120 < 0)
               di->mouse_hwd = 1;
         }
         break;
   }

   return 0;
}
