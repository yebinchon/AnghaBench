
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outp (int,int) ;

void vga_setpalette(int i, int r, int g, int b)
{
 outp(0x3c8,i);
 outp(0x3c9,r);
 outp(0x3c9,g);
 outp(0x3c9,b);
}
