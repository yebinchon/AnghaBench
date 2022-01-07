
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_3__ {void* height; void* width; void* y; void* x; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_RECT_T ;


 int MMAL_EINVAL ;
 int MMAL_SUCCESS ;
 int sscanf (char const*,char*,void**,void**,...) ;

MMAL_STATUS_T mmal_parse_geometry(MMAL_RECT_T *dest, const char *str)
{
   MMAL_STATUS_T ret;
   uint32_t w, h, x, y;
   x = y = w = h = 0;

   if (sscanf(str, "%d*%d+%d+%d", &w,&h,&x,&y) == 4 ||
       sscanf(str, "%d*%d", &w,&h) == 2)
   {
      dest->x = x;
      dest->y = y;
      dest->width = w;
      dest->height = h;
      ret = MMAL_SUCCESS;
   }
   else
   {
      ret = MMAL_EINVAL;
   }
   return ret;
}
