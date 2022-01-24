#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pint_ret_t ;
typedef  int /*<<< orphan*/  path ;
struct TYPE_2__ {int* pen_pos; scalar_t__ page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FrameWnd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int MAX_PATH ; 
 int MF_BYPOSITION ; 
 int /*<<< orphan*/  MF_CHECKED ; 
 int MF_ENABLED ; 
 int MF_GRAYED ; 
 int /*<<< orphan*/  MF_UNCHECKED ; 
 int PAHW_PICO ; 
 int /*<<< orphan*/  PI_ROM ; 
 int PicoAHW ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PicoPadWnd ; 
 TYPE_1__ PicoPicohw ; 
 int /*<<< orphan*/  PicoSwWnd ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  SW_SHOWNA ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_COMMAND ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (char*,unsigned char*,int) ; 
 scalar_t__ in_vk_add_pl12 ; 
 int /*<<< orphan*/  mmain ; 
 int /*<<< orphan*/  mpicohw ; 
 void* FUNC11 (char*,int) ; 
 int /*<<< orphan*/ * ppad_bmp ; 
 int /*<<< orphan*/ ** ppage_bmps ; 
 char* rom_name ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 char* FUNC14 (char*,char) ; 

__attribute__((used)) static void FUNC15(void)
{
  unsigned char *rom_data = NULL;
  int i, ret, show = PicoAHW & PAHW_PICO;
  
  FUNC6(PI_ROM, (pint_ret_t *) &rom_data);
  FUNC3(mmain, 2, MF_BYPOSITION|(show ? MF_ENABLED : MF_GRAYED));
  FUNC8(PicoPadWnd, show ? SW_SHOWNA : SW_HIDE);
  FUNC8(PicoSwWnd, show ? SW_SHOWNA : SW_HIDE);
  FUNC0(mpicohw, 1210, show ? MF_CHECKED : MF_UNCHECKED);
  FUNC0(mpicohw, 1211, show ? MF_CHECKED : MF_UNCHECKED);
  FUNC7(FrameWnd, WM_COMMAND, 1220 + PicoPicohw.page, 0);
  FUNC2(FrameWnd);
  FUNC5(PicoSwWnd, NULL, 1);

  PicoPicohw.pen_pos[0] =
  PicoPicohw.pen_pos[1] = 0x8000;
  in_vk_add_pl12 = 0;

  ret = FUNC10(rom_name, rom_data + 0x150, 0x20);
  if (ret == 0)
    FUNC10(rom_name, rom_data + 0x130, 0x20);

  if (show)
  {
    char path[MAX_PATH], *p;
    FUNC4(NULL, path, sizeof(path) - 32);
    p = FUNC14(path, '\\');
    if (p == NULL) p = path;
    else p++;
    if (ppad_bmp == NULL) {
      FUNC13(p, "pico\\pad.png");
      ppad_bmp = FUNC11(path, 0);
    }

    FUNC13(p, "pico\\alias.txt");
    FUNC9(path);

    for (i = 0; i < 7; i++) {
      if (ppage_bmps[i] != NULL) FUNC1(ppage_bmps[i]);
      FUNC12(p, "pico\\%s_%i.png", rom_name, i);
      ppage_bmps[i] = FUNC11(path, 1);
    }
    // games usually don't have page 6, so just duplicate page 5.
    if (ppage_bmps[6] == NULL && ppage_bmps[5] != NULL) {
      FUNC12(p, "pico\\%s_5.png", rom_name);
      ppage_bmps[6] = FUNC11(path, 1);
    }
  }
}