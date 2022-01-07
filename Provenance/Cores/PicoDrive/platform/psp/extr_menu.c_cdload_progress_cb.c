
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lcdr_line ;
 int memset (unsigned short*,int,int) ;
 scalar_t__ menu_screen ;
 int romFileName ;
 int smalltext_out16 (int,int,char*,int) ;
 int smalltext_out16_lim (int,int,int ,int,int) ;

__attribute__((used)) static void cdload_progress_cb(int percent)
{
 int ln, len = percent * 480 / 100;
 unsigned short *dst;

 if (lcdr_line <= 2) {
  lcdr_line++;
  smalltext_out16(1, lcdr_line++ * 10, "Processing CD image / MP3s", 0xffff);
  smalltext_out16_lim(1, lcdr_line++ * 10, romFileName, 0xffff, 80);
 }

 dst = (unsigned short *)menu_screen + 512*10*lcdr_line;

 if (len > 480) len = 480;
 for (ln = 8; ln > 0; ln--, dst += 512)
  memset(dst, 0xff, len*2);
}
