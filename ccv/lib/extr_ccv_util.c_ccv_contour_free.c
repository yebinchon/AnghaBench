
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ set; } ;
typedef TYPE_1__ ccv_contour_t ;


 int ccfree (TYPE_1__*) ;
 int ccv_array_free (scalar_t__) ;

void ccv_contour_free(ccv_contour_t* contour)
{
 if (contour->set)
  ccv_array_free(contour->set);
 ccfree(contour);
}
