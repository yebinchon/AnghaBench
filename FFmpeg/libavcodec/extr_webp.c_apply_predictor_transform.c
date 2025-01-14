
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef enum PredictionMode { ____Placeholder_PredictionMode } PredictionMode ;
struct TYPE_6__ {int avctx; TYPE_2__* image; } ;
typedef TYPE_1__ WebPContext ;
struct TYPE_8__ {int height; int width; } ;
struct TYPE_7__ {int size_reduction; TYPE_3__* frame; } ;
typedef TYPE_2__ ImageContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int GET_PIXEL_COMP (TYPE_3__*,int,int,int) ;
 size_t IMAGE_ROLE_ARGB ;
 size_t IMAGE_ROLE_PREDICTOR ;
 int PRED_MODE_BLACK ;
 int PRED_MODE_L ;
 int PRED_MODE_T ;
 int av_log (int ,int ,char*,int) ;
 int inverse_prediction (TYPE_3__*,int,int,int) ;

__attribute__((used)) static int apply_predictor_transform(WebPContext *s)
{
    ImageContext *img = &s->image[IMAGE_ROLE_ARGB];
    ImageContext *pimg = &s->image[IMAGE_ROLE_PREDICTOR];
    int x, y;

    for (y = 0; y < img->frame->height; y++) {
        for (x = 0; x < img->frame->width; x++) {
            int tx = x >> pimg->size_reduction;
            int ty = y >> pimg->size_reduction;
            enum PredictionMode m = GET_PIXEL_COMP(pimg->frame, tx, ty, 2);

            if (x == 0) {
                if (y == 0)
                    m = PRED_MODE_BLACK;
                else
                    m = PRED_MODE_T;
            } else if (y == 0)
                m = PRED_MODE_L;

            if (m > 13) {
                av_log(s->avctx, AV_LOG_ERROR,
                       "invalid predictor mode: %d\n", m);
                return AVERROR_INVALIDDATA;
            }
            inverse_prediction(img->frame, m, x, y);
        }
    }
    return 0;
}
