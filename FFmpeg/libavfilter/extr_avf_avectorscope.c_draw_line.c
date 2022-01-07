
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AudioVectorScopeContext ;


 int FFABS (int) ;
 int draw_dot (int *,int,int) ;

__attribute__((used)) static void draw_line(AudioVectorScopeContext *s, int x0, int y0, int x1, int y1)
{
    int dx = FFABS(x1-x0), sx = x0 < x1 ? 1 : -1;
    int dy = FFABS(y1-y0), sy = y0 < y1 ? 1 : -1;
    int err = (dx>dy ? dx : -dy) / 2, e2;

    for (;;) {
        draw_dot(s, x0, y0);

        if (x0 == x1 && y0 == y1)
            break;

        e2 = err;

        if (e2 >-dx) {
            err -= dy;
            x0 += sx;
        }

        if (e2 < dy) {
            err += dx;
            y0 += sy;
        }
    }
}
