
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int usUsagePage; int usUsage; scalar_t__ hwndTarget; int dwFlags; } ;
typedef TYPE_1__ RAWINPUTDEVICE ;
typedef scalar_t__ HWND ;
typedef int BOOL ;


 int GetLastError () ;
 int RARCH_ERR (char*,int ) ;
 int RIDEV_REMOVE ;
 int RegisterRawInputDevices (TYPE_1__*,int,int) ;

__attribute__((used)) static bool winraw_set_keyboard_input(HWND window)
{
   RAWINPUTDEVICE rid;
   BOOL r;

   rid.dwFlags = window ? 0 : RIDEV_REMOVE;
   rid.hwndTarget = window;
   rid.usUsagePage = 0x01;
   rid.usUsage = 0x06;

   r = RegisterRawInputDevices(&rid, 1, sizeof(RAWINPUTDEVICE));

   if (!r)
   {
      RARCH_ERR("[WINRAW]: RegisterRawInputDevices failed with error %lu.\n", GetLastError());
      return 0;
   }

   return 1;
}
