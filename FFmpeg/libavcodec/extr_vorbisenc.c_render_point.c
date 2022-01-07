
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int render_point(int x0, int y0, int x1, int y1, int x)
{
    return y0 + (x - x0) * (y1 - y0) / (x1 - x0);
}
