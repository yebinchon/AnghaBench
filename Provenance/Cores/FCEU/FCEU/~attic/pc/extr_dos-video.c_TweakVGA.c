
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VGAPortSet (int ) ;
 int inportb (int) ;
 int outportb (int,int) ;
 int * v256x224S ;
 int * v256x224_103 ;
 int * v256x240 ;
 int * v256x256 ;
 int * v256x256S ;
 int vga_waitretrace () ;

void TweakVGA(int VGAMode)
{
  int I;

  vga_waitretrace();

  outportb(0x3C8,0x00);
  for(I=0;I<768;I++) outportb(0x3C9,0x00);

  outportb(0x3D4,0x11);
  I=inportb(0x3D5)&0x7F;
  outportb(0x3D4,0x11);
  outportb(0x3D5,I);

  switch(VGAMode)
  {
    case 1: for(I=0;I<25;I++) VGAPortSet(v256x240[I]);break;
    case 2: for(I=0;I<25;I++) VGAPortSet(v256x256[I]);break;
    case 3: for(I=0;I<25;I++) VGAPortSet(v256x256S[I]);break;
    case 6: for(I=0;I<25;I++) VGAPortSet(v256x224S[I]);break;
    case 8: for(I=0;I<25;I++) VGAPortSet(v256x224_103[I]);break;
    default: break;
  }

  outportb(0x3da,0);
}
