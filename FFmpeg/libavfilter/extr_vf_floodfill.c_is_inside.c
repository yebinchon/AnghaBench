
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int is_inside(int x, int y, int w, int h)
{
    if (x >= 0 && x < w && y >= 0 && y < h)
        return 1;
    return 0;
}
