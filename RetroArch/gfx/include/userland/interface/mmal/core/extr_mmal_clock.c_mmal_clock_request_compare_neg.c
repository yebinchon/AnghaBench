
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ media_time_adj; } ;
typedef int MMAL_LIST_ELEMENT_T ;
typedef TYPE_1__ MMAL_CLOCK_REQUEST_T ;



__attribute__((used)) static int mmal_clock_request_compare_neg(MMAL_LIST_ELEMENT_T *lhs, MMAL_LIST_ELEMENT_T *rhs)
{
   return ((MMAL_CLOCK_REQUEST_T*)lhs)->media_time_adj > ((MMAL_CLOCK_REQUEST_T*)rhs)->media_time_adj;
}
