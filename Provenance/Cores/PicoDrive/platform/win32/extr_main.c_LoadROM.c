
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int rompath ;
typedef int of ;
struct TYPE_4__ {int lStructSize; char* lpstrFilter; char* lpstrFile; int nMaxFile; int Flags; int hwndOwner; } ;
typedef TYPE_1__ OPENFILENAME ;


 int FrameWnd ;
 int GetOpenFileName (TYPE_1__*) ;
 int MAX_PATH ;
 int OFN_FILEMUSTEXIST ;
 int OFN_HIDEREADONLY ;
 scalar_t__ PGS_Paused ;
 scalar_t__ PGS_Running ;
 int PrepareForROM () ;
 int SetEvent (int ) ;
 int WaitForSingleObject (int ,int) ;
 int ZeroMemory (TYPE_1__*,int) ;
 int emu_reload_rom (char*) ;
 scalar_t__ engineState ;
 int error (char*) ;
 int loop_end_event ;
 int loop_enter_event ;
 int rom_fname_loaded ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static void LoadROM(const char *cmdpath)
{
  char rompath[MAX_PATH];
  int ret;

  if (cmdpath != ((void*)0) && strlen(cmdpath)) {
    strcpy(rompath, cmdpath + (cmdpath[0] == '\"' ? 1 : 0));
    if (rompath[strlen(rompath)-1] == '\"')
      rompath[strlen(rompath)-1] = 0;
  }
  else {
    OPENFILENAME of; ZeroMemory(&of, sizeof(of));
    rompath[sizeof(rompath) - 1] = 0;
    strncpy(rompath, rom_fname_loaded, sizeof(rompath) - 1);
    of.lStructSize = sizeof(of);
    of.lpstrFilter = "ROMs, CD images\0*.smd;*.bin;*.gen;*.zip;*.32x;*.sms;*.iso;*.cso;*.cue\0"
                     "whatever\0*.*\0";
    of.lpstrFile = rompath;
    of.nMaxFile = MAX_PATH;
    of.Flags = OFN_FILEMUSTEXIST|OFN_HIDEREADONLY;
    of.hwndOwner = FrameWnd;
    if (!GetOpenFileName(&of))
      return;
  }

  if (engineState == PGS_Running) {
    engineState = PGS_Paused;
    WaitForSingleObject(loop_end_event, 5000);
  }

  ret = emu_reload_rom(rompath);
  if (ret == 0) {
    extern char menu_error_msg[];
    error(menu_error_msg);
    return;
  }

  PrepareForROM();
  engineState = PGS_Running;
  SetEvent(loop_enter_event);
}
