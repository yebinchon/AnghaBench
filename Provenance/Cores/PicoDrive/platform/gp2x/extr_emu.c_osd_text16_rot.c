
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emu_text_out16_rot (int,int,char const*) ;
 scalar_t__ g_screen_ptr ;
 int memset (short*,int ,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void osd_text16_rot(int x, int y, const char *text)
{
 int len = strlen(text) * 8;
 short *p = (short *)g_screen_ptr + 240*(320-x) + y;

 while (len--) {
  memset(p, 0, 8*2);
  p -= 240;
 }

 emu_text_out16_rot(x, y, text);
}
