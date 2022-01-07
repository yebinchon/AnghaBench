
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int bits_left; } ;
typedef TYPE_1__ GetBitContext ;


 int CLOSE_READER (int ,TYPE_1__*) ;
 int LAST_SKIP_BITS (int ,TYPE_1__*,int) ;
 int OPEN_READER (int ,TYPE_1__*) ;
 unsigned int SHOW_UBITS (int ,TYPE_1__*,int) ;
 unsigned int UINT64_C (int) ;
 int UPDATE_CACHE (int ,TYPE_1__*) ;
 int av_assert2 (int) ;
 unsigned int get_val (TYPE_1__*,int,int) ;
 int re ;
 int refill_32 (TYPE_1__*,int) ;

__attribute__((used)) static inline unsigned int get_bits(GetBitContext *s, int n)
{
    register unsigned int tmp;
    OPEN_READER(re, s);
    av_assert2(n>0 && n<=25);
    UPDATE_CACHE(re, s);
    tmp = SHOW_UBITS(re, s, n);
    LAST_SKIP_BITS(re, s, n);
    CLOSE_READER(re, s);

    av_assert2(tmp < UINT64_C(1) << n);
    return tmp;
}
