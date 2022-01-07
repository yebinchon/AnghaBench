
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;
typedef int GetBitContext ;


 int CLOSE_READER (int ,int *) ;
 int GET_CACHE (int ,int *) ;
 int LAST_SKIP_BITS (int ,int *,int) ;
 int NEG_USR32 (int,int) ;
 int OPEN_READER (int ,int *) ;
 int UPDATE_CACHE (int ,int *) ;
 int av_assert2 (int) ;
 int re ;
 int show_bits (int *,int) ;
 int skip_remaining (int *,int) ;

__attribute__((used)) static inline int get_xbits(GetBitContext *s, int n)
{







    register int sign;
    register int32_t cache;
    OPEN_READER(re, s);
    av_assert2(n>0 && n<=25);
    UPDATE_CACHE(re, s);
    cache = GET_CACHE(re, s);
    sign = ~cache >> 31;
    LAST_SKIP_BITS(re, s, n);
    CLOSE_READER(re, s);
    return (NEG_USR32(sign ^ cache, n) ^ sign) - sign;

}
