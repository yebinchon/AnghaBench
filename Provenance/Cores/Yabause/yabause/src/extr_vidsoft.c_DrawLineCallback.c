
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vdp1cmd_struct ;
typedef int u8 ;
typedef int Vdp1 ;
struct TYPE_4__ {int b; int g; int r; } ;
struct TYPE_3__ {int texturestep; int previousStep; int endcodesdetected; int linenumber; scalar_t__ xbluestep; scalar_t__ xgreenstep; scalar_t__ xredstep; } ;
typedef TYPE_1__ DrawLineData ;


 scalar_t__ getpixel (int ,int,int *,int *) ;
 TYPE_2__ leftColumnColor ;
 int putpixel (int,int,int *,int *,int *) ;
 int putpixel8 (int,int,int *,int *,int *) ;
 int vdp1pixelsize ;

__attribute__((used)) static int DrawLineCallback(int x, int y, int i, void *data, Vdp1* regs, vdp1cmd_struct * cmd, u8* ram, u8* back_framebuffer)
{
 int currentStep;
 DrawLineData *linedata = data;

 leftColumnColor.r += linedata->xredstep;
 leftColumnColor.g += linedata->xgreenstep;
 leftColumnColor.b += linedata->xbluestep;

 currentStep = (int)i * linedata->texturestep;
 if (getpixel(linedata->linenumber, currentStep, cmd, ram)) {
  if (currentStep != linedata->previousStep) {
   linedata->previousStep = currentStep;
   linedata->endcodesdetected ++;
  }
 } else if (vdp1pixelsize == 2) {
  putpixel(x, y, regs, cmd, back_framebuffer);
 } else {
      putpixel8(x, y, regs, cmd, back_framebuffer);
    }

 if (linedata->endcodesdetected == 2) return -1;

 return 0;
}
