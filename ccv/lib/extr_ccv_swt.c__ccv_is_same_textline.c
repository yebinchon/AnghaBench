
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int width; int y; int height; } ;
struct TYPE_4__ {TYPE_1__ rect; } ;
typedef TYPE_2__ ccv_textline_t ;


 double ccv_max (int,int) ;
 double ccv_min (int,int) ;

__attribute__((used)) static int _ccv_is_same_textline(const void* a, const void* b, void* data)
{
 ccv_textline_t* t1 = (ccv_textline_t*)a;
 ccv_textline_t* t2 = (ccv_textline_t*)b;
 int width = ccv_min(t1->rect.x + t1->rect.width, t2->rect.x + t2->rect.width) - ccv_max(t1->rect.x, t2->rect.x);
 int height = ccv_min(t1->rect.y + t1->rect.height, t2->rect.y + t2->rect.height) - ccv_max(t1->rect.y, t2->rect.y);

 double* thresh = (double*)data;
 return (width > 0 && height > 0 &&
   width * height > thresh[0] * ccv_max(t1->rect.width * t1->rect.height, t2->rect.width * t2->rect.height) &&
   width * height > thresh[1] * ccv_min(t1->rect.width * t1->rect.height, t2->rect.width * t2->rect.height));
}
