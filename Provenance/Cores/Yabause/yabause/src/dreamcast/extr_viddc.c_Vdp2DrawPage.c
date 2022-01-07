
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x; int pagewh; int y; int patternpixelwh; int draww; int drawh; int addr; int patterndatasize; } ;
typedef TYPE_1__ vdp2draw_struct ;


 int Vdp2DrawPattern (TYPE_1__*) ;
 int Vdp2PatternAddr (TYPE_1__*) ;

__attribute__((used)) static void Vdp2DrawPage(vdp2draw_struct *info)
{
    int X, Y;
    int i, j;

    X = info->x;
    for(i = 0;i < info->pagewh;i++)
    {
        Y = info->y;
        info->x = X;
        for(j = 0;j < info->pagewh;j++)
        {
            info->y = Y;
            if ((info->x >= -info->patternpixelwh) &&
                (info->y >= -info->patternpixelwh) &&
                (info->x <= info->draww) &&
                (info->y <= info->drawh))
            {
                Vdp2PatternAddr(info);
                Vdp2DrawPattern(info);
            }
            else
            {
                info->addr += info->patterndatasize * 2;
                info->x += info->patternpixelwh;
                info->y += info->patternpixelwh;
            }
        }
    }
}
