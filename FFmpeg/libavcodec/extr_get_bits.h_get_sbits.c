
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int CLOSE_READER (int ,int *) ;
 int LAST_SKIP_BITS (int ,int *,int) ;
 int OPEN_READER (int ,int *) ;
 int SHOW_SBITS (int ,int *,int) ;
 int UPDATE_CACHE (int ,int *) ;
 int av_assert2 (int) ;
 int get_bits (int *,int) ;
 int re ;
 int sign_extend (int ,int) ;

__attribute__((used)) static inline int get_sbits(GetBitContext *s, int n)
{
    register int tmp;




    OPEN_READER(re, s);
    av_assert2(n>0 && n<=25);
    UPDATE_CACHE(re, s);
    tmp = SHOW_SBITS(re, s, n);
    LAST_SKIP_BITS(re, s, n);
    CLOSE_READER(re, s);

    return tmp;
}
