
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xstart; int ystart; int xend; int yend; } ;
typedef TYPE_1__ clipping_struct ;


 int ReadWindowCoordinates (int,TYPE_1__*,int ) ;
 int Vdp2Regs ;

__attribute__((used)) static void CalcWindowCoordinates(int num, int *hstart, int *vstart, int *hend, int *vend)
{
   clipping_struct clip;
   ReadWindowCoordinates(num, &clip, Vdp2Regs);
   *hstart = clip.xstart;
   *vstart = clip.ystart;
   *hend = clip.xend;
   *vend = clip.yend;
}
