
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ccv_point_t ;
struct TYPE_4__ {scalar_t__ height; scalar_t__ width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_5__ {scalar_t__ set; scalar_t__ size; TYPE_1__ rect; } ;
typedef TYPE_2__ ccv_contour_t ;


 scalar_t__ ccmalloc (int) ;
 scalar_t__ ccv_array_new (int,int,int ) ;

ccv_contour_t* ccv_contour_new(int set)
{
 ccv_contour_t* contour = (ccv_contour_t*)ccmalloc(sizeof(ccv_contour_t));
 contour->rect.x = contour->rect.y =
 contour->rect.width = contour->rect.height = 0;
 contour->size = 0;
 if (set)
  contour->set = ccv_array_new(sizeof(ccv_point_t), 5, 0);
 else
  contour->set = 0;
 return contour;
}
