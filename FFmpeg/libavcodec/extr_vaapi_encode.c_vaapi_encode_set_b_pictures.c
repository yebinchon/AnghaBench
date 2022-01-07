
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int b_depth; int is_reference; struct TYPE_12__** refs; void* type; struct TYPE_12__* next; } ;
typedef TYPE_1__ VAAPIEncodePicture ;
struct TYPE_13__ {int max_b_depth; } ;
typedef TYPE_2__ VAAPIEncodeContext ;
struct TYPE_14__ {TYPE_2__* priv_data; } ;
typedef TYPE_3__ AVCodecContext ;


 void* PICTURE_TYPE_B ;
 int av_assert0 (int) ;
 int vaapi_encode_add_ref (TYPE_3__*,TYPE_1__*,TYPE_1__*,int,int,int) ;

__attribute__((used)) static void vaapi_encode_set_b_pictures(AVCodecContext *avctx,
                                        VAAPIEncodePicture *start,
                                        VAAPIEncodePicture *end,
                                        VAAPIEncodePicture *prev,
                                        int current_depth,
                                        VAAPIEncodePicture **last)
{
    VAAPIEncodeContext *ctx = avctx->priv_data;
    VAAPIEncodePicture *pic, *next, *ref;
    int i, len;

    av_assert0(start && end && start != end && start->next != end);




    if (current_depth == ctx->max_b_depth || start->next->next == end) {
        for (pic = start->next; pic; pic = pic->next) {
            if (pic == end)
                break;
            pic->type = PICTURE_TYPE_B;
            pic->b_depth = current_depth;

            vaapi_encode_add_ref(avctx, pic, start, 1, 1, 0);
            vaapi_encode_add_ref(avctx, pic, end, 1, 1, 0);
            vaapi_encode_add_ref(avctx, pic, prev, 0, 0, 1);

            for (ref = end->refs[1]; ref; ref = ref->refs[1])
                vaapi_encode_add_ref(avctx, pic, ref, 0, 1, 0);
        }
        *last = prev;

    } else {


        len = 0;
        for (pic = start->next; pic != end; pic = pic->next)
            ++len;
        for (pic = start->next, i = 1; 2 * i < len; pic = pic->next, i++);

        pic->type = PICTURE_TYPE_B;
        pic->b_depth = current_depth;

        pic->is_reference = 1;

        vaapi_encode_add_ref(avctx, pic, pic, 0, 1, 0);
        vaapi_encode_add_ref(avctx, pic, start, 1, 1, 0);
        vaapi_encode_add_ref(avctx, pic, end, 1, 1, 0);
        vaapi_encode_add_ref(avctx, pic, prev, 0, 0, 1);

        for (ref = end->refs[1]; ref; ref = ref->refs[1])
            vaapi_encode_add_ref(avctx, pic, ref, 0, 1, 0);

        if (i > 1)
            vaapi_encode_set_b_pictures(avctx, start, pic, pic,
                                        current_depth + 1, &next);
        else
            next = pic;

        vaapi_encode_set_b_pictures(avctx, pic, end, next,
                                    current_depth + 1, last);
    }
}
