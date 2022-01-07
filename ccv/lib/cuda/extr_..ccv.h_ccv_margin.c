
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int left; int top; int right; int bottom; } ;
typedef TYPE_1__ ccv_margin_t ;



__attribute__((used)) inline static ccv_margin_t ccv_margin(int left, int top, int right, int bottom)
{
 ccv_margin_t margin;
 margin.left = left;
 margin.top = top;
 margin.right = right;
 margin.bottom = bottom;
 return margin;
}
