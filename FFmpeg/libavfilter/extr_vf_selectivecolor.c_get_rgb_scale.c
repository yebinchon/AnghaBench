
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mid_pred (int,int,int) ;

__attribute__((used)) static int get_rgb_scale(int r, int g, int b, int min_val, int max_val)
{
    return max_val - mid_pred(r, g, b);
}
