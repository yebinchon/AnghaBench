
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int height; int width; int y; int x; } ;
struct TYPE_5__ {int height; int width; int y_offset; int x_offset; } ;
typedef TYPE_1__ OMX_DISPLAYRECTTYPE ;
typedef TYPE_2__ MMAL_RECT_T ;



__attribute__((used)) static void rect_to_omx(OMX_DISPLAYRECTTYPE *dst, const MMAL_RECT_T *src)
{
   dst->x_offset = src->x;
   dst->y_offset = src->y;
   dst->width = src->width;
   dst->height = src->height;
}
