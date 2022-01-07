
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WNDPROC ;
struct TYPE_3__ {char* lpszClassName; int lpfnWndProc; int hInstance; int member_0; } ;
typedef TYPE_1__ WNDCLASSA ;
typedef int * HWND ;


 int * CreateWindowExA (int ,char*,int *,int ,int ,int ,int ,int ,int ,int *,int *,int *) ;
 scalar_t__ ERROR_CLASS_ALREADY_EXISTS ;
 scalar_t__ GetLastError () ;
 int GetModuleHandleA (int *) ;
 int HWND_MESSAGE ;
 int RARCH_ERR (char*,scalar_t__) ;
 int RegisterClassA (TYPE_1__*) ;
 int UnregisterClassA (char*,int *) ;

__attribute__((used)) static HWND winraw_create_window(WNDPROC wnd_proc)
{
   HWND wnd;
   WNDCLASSA wc = {0};

   wc.hInstance = GetModuleHandleA(((void*)0));

   if (!wc.hInstance)
   {
      RARCH_ERR("[WINRAW]: GetModuleHandleA failed with error %lu.\n", GetLastError());
      return ((void*)0);
   }

   wc.lpfnWndProc = wnd_proc;
   wc.lpszClassName = "winraw-input";
   if (!RegisterClassA(&wc) && GetLastError() != ERROR_CLASS_ALREADY_EXISTS)
   {
      RARCH_ERR("[WINRAW]: RegisterClassA failed with error %lu.\n", GetLastError());
      return ((void*)0);
   }

   wnd = CreateWindowExA(0, wc.lpszClassName, ((void*)0), 0, 0, 0, 0, 0,
         HWND_MESSAGE, ((void*)0), ((void*)0), ((void*)0));
   if (!wnd)
   {
      RARCH_ERR("[WINRAW]: CreateWindowExA failed with error %lu.\n", GetLastError());
      goto error;
   }

   return wnd;

error:
   UnregisterClassA(wc.lpszClassName, ((void*)0));
   return ((void*)0);
}
