
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emu_text_out16 (int,int,char const*) ;
 scalar_t__ giz_screen ;
 int memset32 (int*,int ,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void osd_text(int x, int y, const char *text)
{
 int len = strlen(text) * 8 / 2;
 int *p, h;
 for (h = 0; h < 8; h++) {
  p = (int *) ((unsigned short *) giz_screen+x+321*(y+h));
  p = (int *) ((int)p & ~3);
  memset32(p, 0, len);
 }
 emu_text_out16(x, y, text);
}
