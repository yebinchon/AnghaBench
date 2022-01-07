
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int (* add_left_pred ) (int*,int*,int,int ) ;} ;
struct TYPE_7__ {TYPE_1__* avctx; TYPE_2__ llviddsp; } ;
struct TYPE_5__ {scalar_t__ pix_fmt; } ;
typedef TYPE_3__ LagarithContext ;


 scalar_t__ AV_PIX_FMT_YUV420P ;
 int add_lag_median_prediction (int*,int*,int*,int,int*,int*) ;
 int stub1 (int*,int*,int,int ) ;

__attribute__((used)) static void lag_pred_line(LagarithContext *l, uint8_t *buf,
                          int width, int stride, int line)
{
    int L, TL;

    if (!line) {

        L = l->llviddsp.add_left_pred(buf, buf, width, 0);
    } else {

        L = buf[width - stride - 1];

        if (line == 1) {


            TL = l->avctx->pix_fmt == AV_PIX_FMT_YUV420P ? buf[-stride] : L;
        } else {

            TL = buf[width - (2 * stride) - 1];
        }

        add_lag_median_prediction(buf, buf - stride, buf,
                                  width, &L, &TL);
    }
}
