
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x; int patternpixelwh; int patternwh; int draww; float coordincx; int drawh; float coordincy; int mapwh; int y; int addr; int (* PlaneAddr ) (TYPE_1__*,int) ;} ;
typedef TYPE_1__ vdp2draw_struct ;
typedef int u32 ;


 int Vdp2DrawPlane (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int) ;
 scalar_t__ vdp2height ;
 scalar_t__ vdp2width ;

__attribute__((used)) static void Vdp2DrawMap(vdp2draw_struct *info)
{
    int i, j;
    int X, Y;
    u32 lastplane;

    X = info->x;
    lastplane=0xFFFFFFFF;

    info->patternpixelwh = 8 * info->patternwh;
    info->draww = (int)((float)vdp2width / info->coordincx);
    info->drawh = (int)((float)vdp2height / info->coordincy);

    for(i = 0;i < info->mapwh;i++)
    {
        Y = info->y;
        info->x = X;
        for(j = 0;j < info->mapwh;j++)
        {
            info->y = Y;
            info->PlaneAddr(info, info->mapwh * i + j);
            if (info->addr != lastplane)
            {
                Vdp2DrawPlane(info);
                lastplane = info->addr;
            }
        }
    }
}
