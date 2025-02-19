
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_6__ {int (* add_hfyu_median_pred_int16 ) (int *,int const*,int const*,scalar_t__,int,int*,int*) ;} ;
struct TYPE_5__ {int (* add_median_pred ) (int *,int const*,int const*,int,int*,int*) ;} ;
struct TYPE_7__ {int bps; scalar_t__ n; TYPE_2__ hdsp; TYPE_1__ llviddsp; } ;
typedef TYPE_3__ HYuvContext ;


 int stub1 (int *,int const*,int const*,int,int*,int*) ;
 int stub2 (int *,int const*,int const*,scalar_t__,int,int*,int*) ;

__attribute__((used)) static void add_median_prediction(HYuvContext *s, uint8_t *dst, const uint8_t *src, const uint8_t *diff, int w, int *left, int *left_top)
{
    if (s->bps <= 8) {
        s->llviddsp.add_median_pred(dst, src, diff, w, left, left_top);
    } else {
        s->hdsp.add_hfyu_median_pred_int16((uint16_t *)dst, (const uint16_t *)src, (const uint16_t *)diff, s->n-1, w, left, left_top);
    }
}
