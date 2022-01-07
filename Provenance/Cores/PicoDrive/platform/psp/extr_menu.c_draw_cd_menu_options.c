
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bios_names_t {int jp; int eu; int us; } ;
typedef scalar_t__ menu_id ;


 int CDOPT_ENTRY_COUNT ;
 scalar_t__ MA_CDOPT_TESTBIOS_EUR ;
 scalar_t__ MA_CDOPT_TESTBIOS_JAP ;
 scalar_t__ MA_CDOPT_TESTBIOS_USA ;
 int PicoCDBuffers ;
 int cdopt_entries ;
 int me_draw (int ,int ,int,int,int ,struct bios_names_t*) ;
 scalar_t__ me_index2id (int ,int ,int) ;
 int menu_cdopt_cust_draw ;
 int menu_draw_begin () ;
 int menu_draw_end () ;
 int menu_draw_selection (int,int,int) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strcmp (int ,char*) ;
 int strcpy (char*,char*) ;
 int text_out16 (int,int,char*) ;

__attribute__((used)) static void draw_cd_menu_options(int menu_sel, struct bios_names_t *bios_names)
{
 int tl_x = 80+25, tl_y = 16+60;
 menu_id selected_id;
 char ra_buff[16];

 if (PicoCDBuffers > 1) sprintf(ra_buff, "%5iK", PicoCDBuffers * 2);
 else strcpy(ra_buff, "     OFF");

 menu_draw_begin();

 menu_draw_selection(tl_x - 16, tl_y + menu_sel*10, 246);

 me_draw(cdopt_entries, CDOPT_ENTRY_COUNT, tl_x, tl_y, menu_cdopt_cust_draw, bios_names);

 selected_id = me_index2id(cdopt_entries, CDOPT_ENTRY_COUNT, menu_sel);
 if ((selected_id == MA_CDOPT_TESTBIOS_USA && strcmp(bios_names->us, "NOT FOUND")) ||
  (selected_id == MA_CDOPT_TESTBIOS_EUR && strcmp(bios_names->eu, "NOT FOUND")) ||
  (selected_id == MA_CDOPT_TESTBIOS_JAP && strcmp(bios_names->jp, "NOT FOUND")))
   text_out16(tl_x, 250, "Press start to test selected BIOS");

 menu_draw_end();
}
