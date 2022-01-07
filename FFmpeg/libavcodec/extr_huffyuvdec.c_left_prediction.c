
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int (* add_left_pred ) (int *,int const*,int,int) ;int (* add_left_pred_int16 ) (int *,int const*,scalar_t__,int,int) ;} ;
struct TYPE_5__ {int bps; scalar_t__ n; TYPE_1__ llviddsp; } ;
typedef TYPE_2__ HYuvContext ;


 int stub1 (int *,int const*,int,int) ;
 int stub2 (int *,int const*,scalar_t__,int,int) ;

__attribute__((used)) static int left_prediction(HYuvContext *s, uint8_t *dst, const uint8_t *src, int w, int acc)
{
    if (s->bps <= 8) {
        return s->llviddsp.add_left_pred(dst, src, w, acc);
    } else {
        return s->llviddsp.add_left_pred_int16(( uint16_t *)dst, (const uint16_t *)src, s->n-1, w, acc);
    }
}
