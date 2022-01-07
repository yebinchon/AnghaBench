
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vdp1cmd_struct ;
typedef int u8 ;
typedef int Vdp1 ;
struct TYPE_3__ {double linenumber; double texturestep; double xredstep; double xgreenstep; double xbluestep; int previousStep; scalar_t__ endcodesdetected; } ;
typedef TYPE_1__ DrawLineData ;


 int DrawLineCallback ;
 int iterateOverLine (int,int,int,int,int,TYPE_1__*,int ,int *,int *,int *,int *) ;

__attribute__((used)) static int DrawLine(int x1, int y1, int x2, int y2, int greedy, double linenumber, double texturestep, double xredstep, double xgreenstep, double xbluestep, Vdp1* regs, vdp1cmd_struct *cmd, u8 * ram, u8* back_framebuffer)
{
 DrawLineData data;

 data.linenumber = linenumber;
 data.texturestep = texturestep;
 data.xredstep = xredstep;
 data.xgreenstep = xgreenstep;
 data.xbluestep = xbluestep;
 data.endcodesdetected = 0;
 data.previousStep = 123456789;

   return iterateOverLine(x1, y1, x2, y2, greedy, &data, DrawLineCallback, regs, cmd, ram, back_framebuffer);
}
