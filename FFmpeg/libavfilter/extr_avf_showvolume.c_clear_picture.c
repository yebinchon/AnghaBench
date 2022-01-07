
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int h; int w; } ;
struct TYPE_7__ {int bgopacity; TYPE_1__* out; } ;
struct TYPE_6__ {int* linesize; scalar_t__* data; } ;
typedef TYPE_2__ ShowVolumeContext ;
typedef TYPE_3__ AVFilterLink ;


 int AV_WN32A (int*,int const) ;

__attribute__((used)) static void clear_picture(ShowVolumeContext *s, AVFilterLink *outlink)
{
    int i, j;
    const uint32_t bg = (uint32_t)(s->bgopacity * 255) << 24;

    for (i = 0; i < outlink->h; i++) {
        uint32_t *dst = (uint32_t *)(s->out->data[0] + i * s->out->linesize[0]);
        for (j = 0; j < outlink->w; j++)
            AV_WN32A(dst + j, bg);
    }
}
