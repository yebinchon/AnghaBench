
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



__attribute__((used)) static void rect_to_mmal(MMAL_RECT_T *dst, const OMX_DISPLAYRECTTYPE *src)
{
   dst->x = src->x_offset;
   dst->y = src->y_offset;
   dst->width = src->width;
   dst->height = src->height;
}
