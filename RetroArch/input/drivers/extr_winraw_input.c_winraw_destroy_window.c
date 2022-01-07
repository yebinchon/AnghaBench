
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef scalar_t__ BOOL ;


 scalar_t__ DestroyWindow (int ) ;
 int GetLastError () ;
 int RARCH_WARN (char*,int ) ;
 scalar_t__ UnregisterClassA (char*,int *) ;

__attribute__((used)) static void winraw_destroy_window(HWND wnd)
{
   BOOL r;

   if (!wnd)
      return;

   r = DestroyWindow(wnd);

   if (!r)
   {
      RARCH_WARN("[WINRAW]: DestroyWindow failed with error %lu.\n", GetLastError());
   }

   r = UnregisterClassA("winraw-input", ((void*)0));

   if (!r)
   {
      RARCH_WARN("[WINRAW]: UnregisterClassA failed with error %lu.\n", GetLastError());
   }
}
