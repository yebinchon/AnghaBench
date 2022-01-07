
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_6__ {int (* diff_int16 ) (int *,int const*,int const*,scalar_t__,int) ;} ;
struct TYPE_5__ {int (* diff_bytes ) (int *,int const*,int const*,int) ;} ;
struct TYPE_7__ {int bps; scalar_t__ n; TYPE_2__ hencdsp; TYPE_1__ llvidencdsp; } ;
typedef TYPE_3__ HYuvContext ;


 int stub1 (int *,int const*,int const*,int) ;
 int stub2 (int *,int const*,int const*,scalar_t__,int) ;

__attribute__((used)) static inline void diff_bytes(HYuvContext *s, uint8_t *dst,
                              const uint8_t *src0, const uint8_t *src1, int w)
{
    if (s->bps <= 8) {
        s->llvidencdsp.diff_bytes(dst, src0, src1, w);
    } else {
        s->hencdsp.diff_int16((uint16_t *)dst, (const uint16_t *)src0, (const uint16_t *)src1, s->n - 1, w);
    }
}
