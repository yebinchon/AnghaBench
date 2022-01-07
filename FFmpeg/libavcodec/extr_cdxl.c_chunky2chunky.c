
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {TYPE_1__* avctx; int video_size; int video; } ;
struct TYPE_4__ {int height; int width; } ;
typedef int GetByteContext ;
typedef TYPE_2__ CDXLVideoContext ;


 int bytestream2_get_buffer (int *,int *,int) ;
 int bytestream2_init (int *,int ,int ) ;

__attribute__((used)) static void chunky2chunky(CDXLVideoContext *c, int linesize, uint8_t *out)
{
    GetByteContext gb;
    int y;

    bytestream2_init(&gb, c->video, c->video_size);
    for (y = 0; y < c->avctx->height; y++) {
        bytestream2_get_buffer(&gb, out + linesize * y, c->avctx->width * 3);
    }
}
