
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int* linesize; int ** data; } ;
struct TYPE_7__ {TYPE_1__* cover_frame; } ;
struct TYPE_6__ {int * linesize; int height; int width; int ** data; } ;
typedef TYPE_2__ CoverContext ;
typedef TYPE_3__ AVFrame ;


 int AV_CEIL_RSHIFT (int ,int) ;

__attribute__((used)) static void cover_rect(CoverContext *cover, AVFrame *in, int offx, int offy)
{
    int x, y, p;

    for (p = 0; p < 3; p++) {
        uint8_t *data = in->data[p] + (offx>>!!p) + (offy>>!!p) * in->linesize[p];
        const uint8_t *src = cover->cover_frame->data[p];
        int w = AV_CEIL_RSHIFT(cover->cover_frame->width , !!p);
        int h = AV_CEIL_RSHIFT(cover->cover_frame->height, !!p);
        for (y = 0; y < h; y++) {
            for (x = 0; x < w; x++) {
                data[x] = src[x];
            }
            data += in->linesize[p];
            src += cover->cover_frame->linesize[p];
        }
    }
}
