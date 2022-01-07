
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bits; int pb; int (* put_bits ) (int *,int,int) ;} ;
typedef TYPE_1__ LZWEncodeState ;


 int av_assert2 (int) ;
 int stub1 (int *,int,int) ;

__attribute__((used)) static inline void writeCode(LZWEncodeState * s, int c)
{
    av_assert2(0 <= c && c < 1 << s->bits);
    s->put_bits(&s->pb, s->bits, c);
}
