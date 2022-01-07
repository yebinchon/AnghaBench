
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int const uint32_t ;
struct TYPE_4__ {int cxshift; int ** pixel_model; } ;
typedef TYPE_1__ SCPRContext ;


 int decode_unit (TYPE_1__*,int *,int,int const*) ;

__attribute__((used)) static int decode_units(SCPRContext *s, uint32_t *r, uint32_t *g, uint32_t *b,
                        int *cx, int *cx1)
{
    const int cxshift = s->cxshift;
    int ret;

    ret = decode_unit(s, &s->pixel_model[0][*cx + *cx1], 400, r);
    if (ret < 0)
        return ret;

    *cx1 = (*cx << 6) & 0xFC0;
    *cx = *r >> cxshift;
    ret = decode_unit(s, &s->pixel_model[1][*cx + *cx1], 400, g);
    if (ret < 0)
        return ret;

    *cx1 = (*cx << 6) & 0xFC0;
    *cx = *g >> cxshift;
    ret = decode_unit(s, &s->pixel_model[2][*cx + *cx1], 400, b);
    if (ret < 0)
        return ret;

    *cx1 = (*cx << 6) & 0xFC0;
    *cx = *b >> cxshift;

    return 0;
}
