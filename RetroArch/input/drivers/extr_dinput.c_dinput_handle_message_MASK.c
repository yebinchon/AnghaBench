#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pointer_status {void* pointer_id; } ;
struct dinput_input {int mouse_wu; int mouse_wd; int mouse_hwu; int mouse_hwd; int /*<<< orphan*/  joypad_driver_name; TYPE_2__* joypad; int /*<<< orphan*/  window_pos_y; int /*<<< orphan*/  window_pos_x; } ;
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int UINT ;
struct TYPE_4__ {int /*<<< orphan*/  (* destroy ) () ;} ;
struct TYPE_3__ {int /*<<< orphan*/  dbch_devicetype; } ;
typedef  TYPE_1__* PDEV_BROADCAST_HDR ;
typedef  int /*<<< orphan*/  PDEV_BROADCAST_DEVICEINTERFACE ;
typedef  int /*<<< orphan*/  LPARAM ;

/* Variables and functions */
 int /*<<< orphan*/  DBT_DEVICEARRIVAL ; 
 int /*<<< orphan*/  DBT_DEVICEREMOVECOMPLETE ; 
 int /*<<< orphan*/  DBT_DEVTYP_DEVICEINTERFACE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
#define  WM_DEVICECHANGE 134 
#define  WM_MOUSEHWHEEL 133 
#define  WM_MOUSEMOVE 132 
#define  WM_MOUSEWHEEL 131 
#define  WM_POINTERDOWN 130 
#define  WM_POINTERUP 129 
#define  WM_POINTERUPDATE 128 
 int /*<<< orphan*/  FUNC5 (struct dinput_input*,struct pointer_status*) ; 
 int /*<<< orphan*/  FUNC6 (struct dinput_input*,int) ; 
 struct pointer_status* FUNC7 (struct dinput_input*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pointer_status*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ,struct dinput_input*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 

bool FUNC12(void *data, UINT message, WPARAM wParam, LPARAM lParam)
{
   struct dinput_input *di = (struct dinput_input *)data;
   /* WM_POINTERDOWN   : Arrives for each new touch event
    *                    with a new ID - add to list.
    * WM_POINTERUP     : Arrives once the pointer is no
    *                    longer down - remove from list.
    * WM_POINTERUPDATE : arrives for both pressed and
    *                    hovering pointers - ignore hovering
   */

   switch (message)
   {
      case WM_MOUSEMOVE:
         di->window_pos_x = FUNC1(lParam);
         di->window_pos_y = FUNC2(lParam);
         break;
      case WM_POINTERDOWN:
         {
            struct pointer_status *new_pointer =
               (struct pointer_status *)FUNC10(sizeof(struct pointer_status));

            if (!new_pointer)
            {
               FUNC4("[DINPUT]: dinput_handle_message: pointer allocation in WM_POINTERDOWN failed.\n");
               return false;
            }

            new_pointer->pointer_id = FUNC0(wParam);
            FUNC8(new_pointer, lParam);
            FUNC5(di, new_pointer);
            return true;
         }
      case WM_POINTERUP:
         {
            int pointer_id = FUNC0(wParam);
            FUNC6(di, pointer_id);
            return true;
         }
      case WM_POINTERUPDATE:
         {
            int pointer_id = FUNC0(wParam);
            struct pointer_status *pointer = FUNC7(di, pointer_id);
            if (pointer)
               FUNC8(pointer, lParam);
            return true;
         }
      case WM_DEVICECHANGE:
#if defined(_WIN32_WINNT) && _WIN32_WINNT >= 0x0500 /* 2K */
            if (wParam == DBT_DEVICEARRIVAL  || wParam == DBT_DEVICEREMOVECOMPLETE)
            {
               PDEV_BROADCAST_HDR pHdr = (PDEV_BROADCAST_HDR)lParam;
               if(pHdr->dbch_devicetype == DBT_DEVTYP_DEVICEINTERFACE)
               {
#if 0
                  PDEV_BROADCAST_DEVICEINTERFACE pDevInf = (PDEV_BROADCAST_DEVICEINTERFACE)pHdr;
#endif

                  /* To-Do: Don't destroy everything, lets just handle new devices gracefully */
                  if (di->joypad)
                     di->joypad->destroy();
                  di->joypad = input_joypad_init_driver(di->joypad_driver_name, di);
               }
            }
#endif
         break;
      case WM_MOUSEWHEEL:
            if (((short) FUNC3(wParam))/120 > 0)
               di->mouse_wu = true;
            if (((short) FUNC3(wParam))/120 < 0)
               di->mouse_wd = true;
         break;
      case WM_MOUSEHWHEEL:
         {
            if (((short) FUNC3(wParam))/120 > 0)
               di->mouse_hwu = true;
            if (((short) FUNC3(wParam))/120 < 0)
               di->mouse_hwd = true;
         }
         break;
   }

   return false;
}