
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_7__ {int u; int v; int y; } ;
typedef TYPE_2__ YuvPixel ;
struct TYPE_8__ {TYPE_1__* frame; } ;
struct TYPE_6__ {int* linesize; int ** data; } ;
typedef TYPE_3__ MotionPixelsContext ;


 int mp_yuv_to_rgb (int ,int ,int ,int) ;

__attribute__((used)) static void mp_set_rgb_from_yuv(MotionPixelsContext *mp, int x, int y, const YuvPixel *p)
{
    int color;

    color = mp_yuv_to_rgb(p->y, p->v, p->u, 1);
    *(uint16_t *)&mp->frame->data[0][y * mp->frame->linesize[0] + x * 2] = color;
}
