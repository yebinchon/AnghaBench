
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff ;
typedef int FILE ;


 int LC_TIME ;
 scalar_t__ MENU_X2 ;
 int READPNG_FONT ;
 int READPNG_SELECTOR ;
 unsigned char* calloc (int,int) ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fgets (char*,int,int *) ;
 unsigned char* fontdata8x8 ;
 int * fopen (char*,char*) ;
 int free (unsigned char*) ;
 int lprintf (char*,...) ;
 int me_mfont_h ;
 int me_mfont_w ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 unsigned char* menu_font_data ;
 int menu_sel_color ;
 int menu_text_color ;
 int parse_hex_color (char*) ;
 int plat_get_skin_dir (char*,int) ;
 int readpng (unsigned char*,char*,int ,int,int) ;
 int setlocale (int ,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

void menu_init_base(void)
{
 int i, c, l, pos;
 unsigned char *fd, *fds;
 char buff[256];
 FILE *f;

 if (menu_font_data != ((void*)0))
  free(menu_font_data);

 menu_font_data = calloc((MENU_X2 ? 256 * 320 : 128 * 160) / 2, 1);
 if (menu_font_data == ((void*)0))
  return;


 for (c = 0, fd = menu_font_data; c < 256; c++)
 {
  for (l = 0; l < 8; l++)
  {
   unsigned char fd8x8 = fontdata8x8[c*8+l];
   if (fd8x8&0x80) *fd = 0xf0;
   if (fd8x8&0x40) *fd |= 0x0f; fd++;
   if (fd8x8&0x20) *fd = 0xf0;
   if (fd8x8&0x10) *fd |= 0x0f; fd++;
   if (fd8x8&0x08) *fd = 0xf0;
   if (fd8x8&0x04) *fd |= 0x0f; fd++;
   if (fd8x8&0x02) *fd = 0xf0;
   if (fd8x8&0x01) *fd |= 0x0f; fd++;
  }
  fd += 8*2/2;
 }

 if (MENU_X2) {

  fds = menu_font_data + 128 * 160 / 2 - 4;
  fd = menu_font_data + 256 * 320 / 2 - 1;
  for (c = 255; c >= 0; c--)
  {
   for (l = 9; l >= 0; l--, fds -= 4)
   {
    for (i = 3; i >= 0; i--) {
     int px = fds[i] & 0x0f;
     *fd-- = px | (px << 4);
     px = (fds[i] >> 4) & 0x0f;
     *fd-- = px | (px << 4);
    }
    for (i = 3; i >= 0; i--) {
     int px = fds[i] & 0x0f;
     *fd-- = px | (px << 4);
     px = (fds[i] >> 4) & 0x0f;
     *fd-- = px | (px << 4);
    }
   }
  }
 }


 pos = plat_get_skin_dir(buff, sizeof(buff));
 strcpy(buff + pos, "font.png");
 readpng(menu_font_data, buff, READPNG_FONT,
  MENU_X2 ? 256 : 128, MENU_X2 ? 320 : 160);

 memcpy(menu_font_data, menu_font_data + ((int)'>') * me_mfont_w * me_mfont_h / 2,
  me_mfont_w * me_mfont_h / 2);
 strcpy(buff + pos, "selector.png");
 readpng(menu_font_data, buff, READPNG_SELECTOR, me_mfont_w, me_mfont_h);


 strcpy(buff + pos, "skin.txt");
 f = fopen(buff, "r");
 if (f != ((void*)0))
 {
  lprintf("found skin.txt\n");
  while (!feof(f))
  {
   if (fgets(buff, sizeof(buff), f) == ((void*)0))
    break;
   if (buff[0] == '#' || buff[0] == '/') continue;
   if (buff[0] == '\r' || buff[0] == '\n') continue;
   if (strncmp(buff, "text_color=", 11) == 0)
   {
    int tmp = parse_hex_color(buff+11);
    if (tmp >= 0) menu_text_color = tmp;
    else lprintf("skin.txt: parse error for text_color\n");
   }
   else if (strncmp(buff, "selection_color=", 16) == 0)
   {
    int tmp = parse_hex_color(buff+16);
    if (tmp >= 0) menu_sel_color = tmp;
    else lprintf("skin.txt: parse error for selection_color\n");
   }
   else
    lprintf("skin.txt: parse error: %s\n", buff);
  }
  fclose(f);
 }


 setlocale(LC_TIME, "");
}
