#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rompath ;
typedef  int /*<<< orphan*/  of ;
struct TYPE_4__ {int lStructSize; char* lpstrFilter; char* lpstrFile; int nMaxFile; int Flags; int /*<<< orphan*/  hwndOwner; } ;
typedef  TYPE_1__ OPENFILENAME ;

/* Variables and functions */
 int /*<<< orphan*/  FrameWnd ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int MAX_PATH ; 
 int OFN_FILEMUSTEXIST ; 
 int OFN_HIDEREADONLY ; 
 scalar_t__ PGS_Paused ; 
 scalar_t__ PGS_Running ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (char*) ; 
 scalar_t__ engineState ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  loop_end_event ; 
 int /*<<< orphan*/  loop_enter_event ; 
 int /*<<< orphan*/  rom_fname_loaded ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(const char *cmdpath)
{
  char rompath[MAX_PATH];
  int ret;

  if (cmdpath != NULL && FUNC8(cmdpath)) {
    FUNC7(rompath, cmdpath + (cmdpath[0] == '\"' ? 1 : 0));
    if (rompath[FUNC8(rompath)-1] == '\"')
      rompath[FUNC8(rompath)-1] = 0;
  }
  else {
    OPENFILENAME of; FUNC4(&of, sizeof(of));
    rompath[sizeof(rompath) - 1] = 0;
    FUNC9(rompath, rom_fname_loaded, sizeof(rompath) - 1);
    of.lStructSize = sizeof(of);
    of.lpstrFilter = "ROMs, CD images\0*.smd;*.bin;*.gen;*.zip;*.32x;*.sms;*.iso;*.cso;*.cue\0"
                     "whatever\0*.*\0";
    of.lpstrFile = rompath;
    of.nMaxFile = MAX_PATH;
    of.Flags = OFN_FILEMUSTEXIST|OFN_HIDEREADONLY;
    of.hwndOwner = FrameWnd;
    if (!FUNC0(&of))
      return;
  }

  if (engineState == PGS_Running) {
    engineState = PGS_Paused;
    FUNC3(loop_end_event, 5000);
  }

  ret = FUNC5(rompath);
  if (ret == 0) {
    extern char menu_error_msg[]; // HACK..
    FUNC6(menu_error_msg);
    return;
  }

  FUNC1();
  engineState = PGS_Running;
  FUNC2(loop_enter_event);
}