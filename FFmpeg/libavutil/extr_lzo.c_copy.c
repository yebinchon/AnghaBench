
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int const uint8_t ;
struct TYPE_3__ {int const* out; int const* in; int error; int const* out_end; int const* in_end; } ;
typedef TYPE_1__ LZOContext ;


 int AV_COPY32U (int const*,int const*) ;
 int AV_LZO_INPUT_DEPLETED ;
 int AV_LZO_OUTPUT_FULL ;
 int FFMAX (int,int ) ;
 int av_assert0 (int) ;
 int memcpy (int const*,int const*,int) ;

__attribute__((used)) static inline void copy(LZOContext *c, int cnt)
{
    register const uint8_t *src = c->in;
    register uint8_t *dst = c->out;
    av_assert0(cnt >= 0);
    if (cnt > c->in_end - src) {
        cnt = FFMAX(c->in_end - src, 0);
        c->error |= AV_LZO_INPUT_DEPLETED;
    }
    if (cnt > c->out_end - dst) {
        cnt = FFMAX(c->out_end - dst, 0);
        c->error |= AV_LZO_OUTPUT_FULL;
    }







    memcpy(dst, src, cnt);
    c->in = src + cnt;
    c->out = dst + cnt;
}
