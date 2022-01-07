
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * out; int error; int * out_end; int * out_start; } ;
typedef TYPE_1__ LZOContext ;


 int AV_LZO_INVALID_BACKPTR ;
 int AV_LZO_OUTPUT_FULL ;
 int FFMAX (int,int ) ;
 int av_assert0 (int) ;
 int av_memcpy_backptr (int *,int,int) ;

__attribute__((used)) static inline void copy_backptr(LZOContext *c, int back, int cnt)
{
    register uint8_t *dst = c->out;
    av_assert0(cnt > 0);
    if (dst - c->out_start < back) {
        c->error |= AV_LZO_INVALID_BACKPTR;
        return;
    }
    if (cnt > c->out_end - dst) {
        cnt = FFMAX(c->out_end - dst, 0);
        c->error |= AV_LZO_OUTPUT_FULL;
    }
    av_memcpy_backptr(dst, back, cnt);
    c->out = dst + cnt;
}
