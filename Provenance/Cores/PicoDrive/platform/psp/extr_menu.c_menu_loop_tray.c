
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cd_img_type ;
typedef int FILE ;


 int CIT_NOT_CD ;
 int Insert_CD (int ,int ) ;
 int PATH_MAX ;
 int PBTN_CIRCLE ;
 int PBTN_DOWN ;
 int PBTN_UP ;
 int PGS_RestartRun ;
 int draw_menu_tray (int) ;
 int emu_cdCheck (int *,int ) ;
 int engineState ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int getcwd (char*,int) ;
 unsigned long in_menu_wait (int,int ) ;
 int loadedRomFName ;
 int lprintf (char*,scalar_t__*) ;
 scalar_t__* menuErrorMsg ;
 int menu_gfx_prepare () ;
 int psp_msleep (int) ;
 int psp_pad_read (int) ;
 int romFileName ;
 char* romsel_loop (char*) ;
 int sprintf (scalar_t__*,char*) ;
 int strcpy (char*,int ) ;

int menu_loop_tray(void)
{
 int menu_sel = 0, menu_sel_max = 1;
 unsigned long inp = 0;
 char curr_path[PATH_MAX], *selfname;
 FILE *tstf;

 menu_gfx_prepare();

 if ( (tstf = fopen(loadedRomFName, "rb")) )
 {
  fclose(tstf);
  strcpy(curr_path, loadedRomFName);
 }
 else
 {
  getcwd(curr_path, PATH_MAX);
 }


 draw_menu_tray(menu_sel);
 while (psp_pad_read(1) & PBTN_CIRCLE) psp_msleep(50);

 for (;;)
 {
  draw_menu_tray(menu_sel);
  inp = in_menu_wait(PBTN_UP|PBTN_DOWN|PBTN_CIRCLE, 0);
  if(inp & PBTN_UP ) { menu_sel--; if (menu_sel < 0) menu_sel = menu_sel_max; }
  if(inp & PBTN_DOWN) { menu_sel++; if (menu_sel > menu_sel_max) menu_sel = 0; }
  if(inp & PBTN_CIRCLE) {
   switch (menu_sel) {
    case 0:
     selfname = romsel_loop(curr_path);
     if (selfname) {
      int ret = -1;
      cd_img_type cd_type;
      cd_type = emu_cdCheck(((void*)0), romFileName);
      if (cd_type != CIT_NOT_CD)
       ret = Insert_CD(romFileName, cd_type);
      if (ret != 0) {
       sprintf(menuErrorMsg, "Load failed, invalid CD image?");
       lprintf("%s\n", menuErrorMsg);
       continue;
      }
      engineState = PGS_RestartRun;
      return 1;
     }
     break;
    case 1:
     engineState = PGS_RestartRun;
     return 0;
   }
  }
  menuErrorMsg[0] = 0;
 }
}
