
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cob; int cog; int cor; } ;
typedef TYPE_1__ vdp2draw_struct ;
typedef int u16 ;


 int COLOR_ADD (int ,int ,int ,int ) ;

__attribute__((used)) static u16 DoColorCalcWithColorOffset(void *info, u16 pixel)
{


    return COLOR_ADD(pixel, ((vdp2draw_struct *)info)->cor,
                     ((vdp2draw_struct *)info)->cog,
                     ((vdp2draw_struct *)info)->cob);
}
