
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emu_text_out16 (int,int,char const*) ;
 scalar_t__ g_screen_ptr ;
 int g_screen_width ;
 int strlen (char const*) ;

void emu_osd_text16(int x, int y, const char *text)
{
 int len = strlen(text) * 8;
 int i, h;

 len++;
 if (x + len > g_screen_width)
  len = g_screen_width - x;

 for (h = 0; h < 8; h++) {
  unsigned short *p;
  p = (unsigned short *)g_screen_ptr
   + x + g_screen_width * (y + h);
  for (i = len; i > 0; i--, p++)
   *p = (*p >> 2) & 0x39e7;
 }
 emu_text_out16(x, y, text);
}
