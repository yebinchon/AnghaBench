
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * PicoCDLoadProgressCB ;
 int PicoCartLoadProgressCB ;
 int lcdr_line ;
 int smalltext_out16 (int,int,char*,int) ;

void menu_romload_end(void)
{
 PicoCartLoadProgressCB = PicoCDLoadProgressCB = ((void*)0);
 smalltext_out16(1, ++lcdr_line*10, "Starting emulation...", 0xffff);
}
