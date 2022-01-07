
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bios_names_t {scalar_t__* jp; scalar_t__* eu; scalar_t__* us; } ;
typedef int menu_id ;


 int CDOPT_ENTRY_COUNT ;
 int MA_CDOPT_DONE ;
 int MA_CDOPT_READAHEAD ;



 unsigned long PBTN_CIRCLE ;
 unsigned long PBTN_DOWN ;
 unsigned long PBTN_LEFT ;
 unsigned long PBTN_RIGHT ;
 unsigned long PBTN_START ;
 unsigned long PBTN_UP ;
 unsigned long PBTN_X ;
 int PGS_ReloadRom ;
 int PicoCDBuffers ;
 int cdopt_entries ;
 int draw_cd_menu_options (int,struct bios_names_t*) ;
 scalar_t__ emu_findBios (int,char**) ;
 int engineState ;
 unsigned long in_menu_wait (unsigned long,int ) ;
 int me_index2id (int ,int ,int) ;
 int me_process (int ,int ,int,int) ;
 scalar_t__* menuErrorMsg ;
 scalar_t__* romFileName ;
 int strcpy (scalar_t__*,char*) ;
 int strlen (char*) ;
 int strncpy (scalar_t__*,char*,int) ;

__attribute__((used)) static void cd_menu_loop_options(void)
{
 static int menu_sel = 0;
 int menu_sel_max = 10;
 unsigned long inp = 0;
 struct bios_names_t bios_names;
 menu_id selected_id;
 char *bios, *p;

 if (emu_findBios(4, &bios)) {
  for (p = bios+strlen(bios)-1; p > bios && *p != '/'; p--);
  if (*p == '/') p++;
  strncpy(bios_names.us, p, sizeof(bios_names.us)); bios_names.us[sizeof(bios_names.us)-1] = 0;
 } else strcpy(bios_names.us, "NOT FOUND");

 if (emu_findBios(8, &bios)) {
  for (p = bios+strlen(bios)-1; p > bios && *p != '/'; p--);
  if (*p == '/') p++;
  strncpy(bios_names.eu, p, sizeof(bios_names.eu)); bios_names.eu[sizeof(bios_names.eu)-1] = 0;
 } else strcpy(bios_names.eu, "NOT FOUND");

 if (emu_findBios(1, &bios)) {
  for (p = bios+strlen(bios)-1; p > bios && *p != '/'; p--);
  if (*p == '/') p++;
  strncpy(bios_names.jp, p, sizeof(bios_names.jp)); bios_names.jp[sizeof(bios_names.jp)-1] = 0;
 } else strcpy(bios_names.jp, "NOT FOUND");

 menuErrorMsg[0] = 0;

 for (;;)
 {
  draw_cd_menu_options(menu_sel, &bios_names);
  inp = in_menu_wait(PBTN_UP|PBTN_DOWN|PBTN_LEFT|PBTN_RIGHT|PBTN_X|PBTN_CIRCLE|PBTN_START, 0);
  if (inp & PBTN_UP ) { menu_sel--; if (menu_sel < 0) menu_sel = menu_sel_max; }
  if (inp & PBTN_DOWN) { menu_sel++; if (menu_sel > menu_sel_max) menu_sel = 0; }
  selected_id = me_index2id(cdopt_entries, CDOPT_ENTRY_COUNT, menu_sel);
  if (inp & (PBTN_LEFT|PBTN_RIGHT)) {
   if (!me_process(cdopt_entries, CDOPT_ENTRY_COUNT, selected_id, (inp&PBTN_RIGHT) ? 1 : 0) &&
       selected_id == MA_CDOPT_READAHEAD) {
    if (inp & PBTN_LEFT) {
     PicoCDBuffers >>= 1;
     if (PicoCDBuffers < 2) PicoCDBuffers = 0;
    } else {
     if (PicoCDBuffers < 2) PicoCDBuffers = 2;
     else PicoCDBuffers <<= 1;
     if (PicoCDBuffers > 8*1024) PicoCDBuffers = 8*1024;
    }
   }
  }
  if (inp & PBTN_CIRCLE)
   if (!me_process(cdopt_entries, CDOPT_ENTRY_COUNT, selected_id, 1) &&
       selected_id == MA_CDOPT_DONE) {
    return;
   }
  if (inp & PBTN_START) {
   switch (selected_id) {
    case 128:
     if (emu_findBios(4, &bios)) {
      strcpy(romFileName, bios);
      engineState = PGS_ReloadRom;
      return;
     }
     break;
    case 130:
     if (emu_findBios(8, &bios)) {
      strcpy(romFileName, bios);
      engineState = PGS_ReloadRom;
      return;
     }
     break;
    case 129:
     if (emu_findBios(1, &bios)) {
      strcpy(romFileName, bios);
      engineState = PGS_ReloadRom;
      return;
     }
     break;
    default:
     break;
   }
  }
  if (inp & PBTN_X) return;
 }
}
