
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int mfxU8 ;
struct TYPE_8__ {size_t BufSize; int NumBit; int Type; int* Data; } ;
typedef TYPE_1__ mfxPayload ;
struct TYPE_9__ {int NumPayload; TYPE_1__** Payload; scalar_t__ NumExtParam; } ;
typedef TYPE_2__ mfxEncodeCtrl ;
struct TYPE_12__ {TYPE_3__* priv_data; } ;
struct TYPE_11__ {scalar_t__ a53_cc; } ;
struct TYPE_10__ {TYPE_4__ qsv; } ;
typedef TYPE_3__ QSVH264EncContext ;
typedef TYPE_4__ QSVEncContext ;
typedef int AVFrame ;
typedef TYPE_5__ AVCodecContext ;


 int ff_alloc_a53_sei (int const*,int,void**,size_t*) ;

__attribute__((used)) static int qsv_h264_set_encode_ctrl(AVCodecContext *avctx,
                                    const AVFrame *frame, mfxEncodeCtrl* enc_ctrl)
{
    QSVH264EncContext *qh264 = avctx->priv_data;
    QSVEncContext *q = &qh264->qsv;

    if (q->a53_cc && frame) {
        mfxPayload* payload;
        mfxU8* sei_data;
        size_t sei_size;
        int res;

        res = ff_alloc_a53_sei(frame, sizeof(mfxPayload) + 2, (void**)&payload, &sei_size);
        if (res < 0 || !payload)
            return res;

        sei_data = (mfxU8*)(payload + 1);

        sei_data[0] = 4;
        sei_data[1] = (mfxU8)sei_size;


        payload->BufSize = sei_size + 2;
        payload->NumBit = payload->BufSize * 8;
        payload->Type = 4;
        payload->Data = sei_data;

        enc_ctrl->NumExtParam = 0;
        enc_ctrl->NumPayload = 1;
        enc_ctrl->Payload[0] = payload;
    }
    return 0;
}
