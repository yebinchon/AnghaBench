
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pint_ret_t ;
typedef int path ;
struct TYPE_2__ {int* pen_pos; scalar_t__ page; } ;


 int CheckMenuItem (int ,int,int ) ;
 int DeleteObject (int *) ;
 int DrawMenuBar (int ) ;
 int EnableMenuItem (int ,int,int) ;
 int FrameWnd ;
 int GetModuleFileName (int *,char*,int) ;
 int InvalidateRect (int ,int *,int) ;
 int MAX_PATH ;
 int MF_BYPOSITION ;
 int MF_CHECKED ;
 int MF_ENABLED ;
 int MF_GRAYED ;
 int MF_UNCHECKED ;
 int PAHW_PICO ;
 int PI_ROM ;
 int PicoAHW ;
 int PicoGetInternal (int ,int *) ;
 int PicoPadWnd ;
 TYPE_1__ PicoPicohw ;
 int PicoSwWnd ;
 int PostMessage (int ,int ,scalar_t__,int ) ;
 int SW_HIDE ;
 int SW_SHOWNA ;
 int ShowWindow (int ,int ) ;
 int WM_COMMAND ;
 int check_name_alias (char*) ;
 int extract_rom_name (char*,unsigned char*,int) ;
 scalar_t__ in_vk_add_pl12 ;
 int mmain ;
 int mpicohw ;
 void* png2hb (char*,int) ;
 int * ppad_bmp ;
 int ** ppage_bmps ;
 char* rom_name ;
 int sprintf (char*,char*,char*,...) ;
 int strcpy (char*,char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void PrepareForROM(void)
{
  unsigned char *rom_data = ((void*)0);
  int i, ret, show = PicoAHW & PAHW_PICO;

  PicoGetInternal(PI_ROM, (pint_ret_t *) &rom_data);
  EnableMenuItem(mmain, 2, MF_BYPOSITION|(show ? MF_ENABLED : MF_GRAYED));
  ShowWindow(PicoPadWnd, show ? SW_SHOWNA : SW_HIDE);
  ShowWindow(PicoSwWnd, show ? SW_SHOWNA : SW_HIDE);
  CheckMenuItem(mpicohw, 1210, show ? MF_CHECKED : MF_UNCHECKED);
  CheckMenuItem(mpicohw, 1211, show ? MF_CHECKED : MF_UNCHECKED);
  PostMessage(FrameWnd, WM_COMMAND, 1220 + PicoPicohw.page, 0);
  DrawMenuBar(FrameWnd);
  InvalidateRect(PicoSwWnd, ((void*)0), 1);

  PicoPicohw.pen_pos[0] =
  PicoPicohw.pen_pos[1] = 0x8000;
  in_vk_add_pl12 = 0;

  ret = extract_rom_name(rom_name, rom_data + 0x150, 0x20);
  if (ret == 0)
    extract_rom_name(rom_name, rom_data + 0x130, 0x20);

  if (show)
  {
    char path[MAX_PATH], *p;
    GetModuleFileName(((void*)0), path, sizeof(path) - 32);
    p = strrchr(path, '\\');
    if (p == ((void*)0)) p = path;
    else p++;
    if (ppad_bmp == ((void*)0)) {
      strcpy(p, "pico\\pad.png");
      ppad_bmp = png2hb(path, 0);
    }

    strcpy(p, "pico\\alias.txt");
    check_name_alias(path);

    for (i = 0; i < 7; i++) {
      if (ppage_bmps[i] != ((void*)0)) DeleteObject(ppage_bmps[i]);
      sprintf(p, "pico\\%s_%i.png", rom_name, i);
      ppage_bmps[i] = png2hb(path, 1);
    }

    if (ppage_bmps[6] == ((void*)0) && ppage_bmps[5] != ((void*)0)) {
      sprintf(p, "pico\\%s_5.png", rom_name);
      ppage_bmps[6] = png2hb(path, 1);
    }
  }
}
