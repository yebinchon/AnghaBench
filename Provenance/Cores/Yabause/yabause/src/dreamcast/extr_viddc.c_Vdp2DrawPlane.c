
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x; int planeh; int y; int planew; } ;
typedef TYPE_1__ vdp2draw_struct ;


 int Vdp2DrawPage (TYPE_1__*) ;

__attribute__((used)) static void Vdp2DrawPlane(vdp2draw_struct *info)
{
    int X, Y;
    int i, j;

    X = info->x;
    for(i = 0;i < info->planeh;i++)
    {
        Y = info->y;
        info->x = X;
        for(j = 0;j < info->planew;j++)
        {
            info->y = Y;
            Vdp2DrawPage(info);
        }
    }
}
