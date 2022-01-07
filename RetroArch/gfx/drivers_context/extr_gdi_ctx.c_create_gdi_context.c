
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int GetDC (int ) ;
 int g_win32_inited ;
 int win32_gdi_hdc ;
 int win32_setup_pixel_format (int ,int) ;

void create_gdi_context(HWND hwnd, bool *quit)
{
   win32_gdi_hdc = GetDC(hwnd);

   win32_setup_pixel_format(win32_gdi_hdc, 0);

   g_win32_inited = 1;
}
