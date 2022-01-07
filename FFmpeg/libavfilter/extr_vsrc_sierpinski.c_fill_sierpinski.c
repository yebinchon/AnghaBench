
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pos_x; int pos_y; } ;
typedef TYPE_1__ SierpinskiContext ;


 int FFABS (int) ;

__attribute__((used)) static int fill_sierpinski(SierpinskiContext *s, int x, int y)
{
    int pos_x = x + s->pos_x;
    int pos_y = y + s->pos_y;

    while (pos_x != 0 && pos_y != 0) {
        if (FFABS(pos_x % 3) == 1 && FFABS(pos_y % 3) == 1)
            return 1;

        pos_x /= 3;
        pos_y /= 3;
    }

    return 0;
}
