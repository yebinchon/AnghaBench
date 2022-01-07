
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int bits_left; } ;
typedef TYPE_1__ GetBitContext ;


 int OPEN_READER_NOSIZE (int ,TYPE_1__*) ;
 unsigned int SHOW_UBITS (int ,TYPE_1__*,int) ;
 int UPDATE_CACHE (int ,TYPE_1__*) ;
 int av_assert2 (int) ;
 int re ;
 int refill_32 (TYPE_1__*,int) ;
 unsigned int show_val (TYPE_1__*,int) ;

__attribute__((used)) static inline unsigned int show_bits(GetBitContext *s, int n)
{
    register unsigned int tmp;
    OPEN_READER_NOSIZE(re, s);
    av_assert2(n>0 && n<=25);
    UPDATE_CACHE(re, s);
    tmp = SHOW_UBITS(re, s, n);

    return tmp;
}
