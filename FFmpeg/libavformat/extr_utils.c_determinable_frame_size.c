
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int codec_id; } ;
typedef TYPE_1__ AVCodecContext ;







__attribute__((used)) static int determinable_frame_size(AVCodecContext *avctx)
{
    switch(avctx->codec_id) {
    case 130:
    case 129:
    case 128:
    case 131:
        return 1;
    }

    return 0;
}
