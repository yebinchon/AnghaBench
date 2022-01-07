
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cbSize; int style; char const* lpszClassName; scalar_t__ hbrBackground; scalar_t__ hIconSm; int hIcon; int hCursor; int hInstance; } ;
typedef TYPE_1__ WNDCLASSEX ;
typedef scalar_t__ HICON ;
typedef scalar_t__ HBRUSH ;


 scalar_t__ COLOR_WINDOW ;
 int CS_CLASSDC ;
 int CS_HREDRAW ;
 int CS_OWNDC ;
 int CS_VREDRAW ;
 int GetModuleHandle (int *) ;
 int IDC_ARROW ;
 int IDI_ICON ;
 int IMAGE_ICON ;
 int LoadCursor (int *,int ) ;
 int LoadIcon (int ,int ) ;
 scalar_t__ LoadImage (int ,int ,int ,int,int,int ) ;
 int MAKEINTRESOURCE (int ) ;
 int MSG_HASH_USER_LANGUAGE ;
 int MSG_PROGRAM ;
 int RegisterClassEx (TYPE_1__*) ;
 int SetThreadUILanguage (int ) ;
 int * msg_hash_get_uint (int ) ;
 char const* msg_hash_to_str (int ) ;
 int win32_get_langid_from_retro_lang (int ) ;

bool win32_window_init(WNDCLASSEX *wndclass,
      bool fullscreen, const char *class_name)
{




   wndclass->cbSize = sizeof(WNDCLASSEX);
   wndclass->style = CS_HREDRAW | CS_VREDRAW | CS_OWNDC;
   wndclass->hInstance = GetModuleHandle(((void*)0));
   wndclass->hCursor = LoadCursor(((void*)0), IDC_ARROW);
   wndclass->lpszClassName = (class_name != ((void*)0)) ? class_name : msg_hash_to_str(MSG_PROGRAM);
   wndclass->hIcon = LoadIcon(GetModuleHandle(((void*)0)), MAKEINTRESOURCE(IDI_ICON));
   wndclass->hIconSm = (HICON)LoadImage(GetModuleHandle(((void*)0)),
         MAKEINTRESOURCE(IDI_ICON), IMAGE_ICON, 16, 16, 0);
   if (!fullscreen)
      wndclass->hbrBackground = (HBRUSH)COLOR_WINDOW;

   if (class_name != ((void*)0))
      wndclass->style |= CS_CLASSDC;

   if (!RegisterClassEx(wndclass))
      return 0;

   return 1;
}
