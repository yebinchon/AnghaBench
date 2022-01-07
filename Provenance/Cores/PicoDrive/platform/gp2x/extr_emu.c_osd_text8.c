
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emu_text_out8 (int,int,char const*) ;
 scalar_t__ g_screen_ptr ;
 int g_screen_width ;
 int strlen (char const*) ;

__attribute__((used)) static void osd_text8(int x, int y, const char *text)
{
 int len = strlen(text)*8;
 int *p, i, h, offs;

 len = (len+3) >> 2;
 for (h = 0; h < 8; h++) {
  offs = (x + g_screen_width * (y+h)) & ~3;
  p = (int *) ((char *)g_screen_ptr + offs);
  for (i = len; i; i--, p++)
   *p = 0xe0e0e0e0;
 }
 emu_text_out8(x, y, text);
}
