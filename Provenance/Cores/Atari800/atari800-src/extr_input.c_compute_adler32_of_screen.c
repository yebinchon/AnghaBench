
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Screen_HEIGHT ;
 int Screen_WIDTH ;
 scalar_t__ Screen_atari ;
 unsigned char* Z_NULL ;
 unsigned int adler32 (unsigned int,unsigned char*,int) ;

__attribute__((used)) static unsigned int compute_adler32_of_screen(void)
{
 int y;
 unsigned int adler = adler32(0L,Z_NULL,0);
 for (y = 0; y < Screen_HEIGHT; y++) {
  adler = adler32(adler, (unsigned char*)Screen_atari + 24 + Screen_WIDTH*y, 360 - 24);
 }
 return adler;
}
