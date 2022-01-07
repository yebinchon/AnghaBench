
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_6__ {int (* add_int16 ) (int *,int const*,scalar_t__,int) ;} ;
struct TYPE_5__ {int (* add_bytes ) (int *,int *,int) ;} ;
struct TYPE_7__ {int bps; scalar_t__ n; TYPE_2__ hdsp; TYPE_1__ llviddsp; } ;
typedef TYPE_3__ HYuvContext ;


 int stub1 (int *,int *,int) ;
 int stub2 (int *,int const*,scalar_t__,int) ;

__attribute__((used)) static void add_bytes(HYuvContext *s, uint8_t *dst, uint8_t *src, int w)
{
    if (s->bps <= 8) {
        s->llviddsp.add_bytes(dst, src, w);
    } else {
        s->hdsp.add_int16((uint16_t*)dst, (const uint16_t*)src, s->n - 1, w);
    }
}
