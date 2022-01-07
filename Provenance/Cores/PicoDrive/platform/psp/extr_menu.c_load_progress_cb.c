
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lcdr_line ;
 int memset (unsigned short*,int,int) ;
 scalar_t__ menu_screen ;

__attribute__((used)) static void load_progress_cb(int percent)
{
 int ln, len = percent * 480 / 100;
 unsigned short *dst;



 dst = (unsigned short *)menu_screen + 512*10*lcdr_line;

 if (len > 480) len = 480;
 for (ln = 8; ln > 0; ln--, dst += 512)
  memset(dst, 0xff, len*2);
}
