
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int patternwh; int x; int y; } ;
typedef TYPE_1__ vdp2draw_struct ;


 int Vdp2DrawCell (TYPE_1__*) ;

__attribute__((used)) static void Vdp2DrawPattern(vdp2draw_struct *info)
{





    switch(info->patternwh)
    {
        case 1:
            Vdp2DrawCell(info);
            info->x += 8;
            info->y += 8;
            break;
        case 2:
            Vdp2DrawCell(info);
            info->x += 8;
            Vdp2DrawCell(info);
            info->x -= 8;
            info->y += 8;
            Vdp2DrawCell(info);
            info->x += 8;
            Vdp2DrawCell(info);
            info->x += 8;
            info->y += 8;
            break;
    }
}
