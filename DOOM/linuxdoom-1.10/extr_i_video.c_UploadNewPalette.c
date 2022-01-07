
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int byte ;
typedef int boolean ;
struct TYPE_5__ {scalar_t__ c_class; int depth; scalar_t__ class; } ;
struct TYPE_4__ {int pixel; int flags; int red; int green; int blue; } ;
typedef int Colormap ;


 int DoBlue ;
 int DoGreen ;
 int DoRed ;
 scalar_t__ PseudoColor ;
 int XStoreColors (int ,int ,TYPE_1__*,int) ;
 int X_display ;
 TYPE_2__ X_visualinfo ;
 TYPE_1__* colors ;
 int** gammatable ;
 size_t usegamma ;

void UploadNewPalette(Colormap cmap, byte *palette)
{

    register int i;
    register int c;
    static boolean firstcall = 1;




    if (X_visualinfo.class == PseudoColor && X_visualinfo.depth == 8)

 {

     if (firstcall)
     {
  firstcall = 0;
  for (i=0 ; i<256 ; i++)
  {
      colors[i].pixel = i;
      colors[i].flags = DoRed|DoGreen|DoBlue;
  }
     }


     for (i=0 ; i<256 ; i++)
     {
  c = gammatable[usegamma][*palette++];
  colors[i].red = (c<<8) + c;
  c = gammatable[usegamma][*palette++];
  colors[i].green = (c<<8) + c;
  c = gammatable[usegamma][*palette++];
  colors[i].blue = (c<<8) + c;
     }


     XStoreColors(X_display, cmap, colors, 256);

 }
}
