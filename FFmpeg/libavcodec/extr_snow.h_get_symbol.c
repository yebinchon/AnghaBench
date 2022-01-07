
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int RangeCoder ;


 int AVERROR_INVALIDDATA ;
 int FFMIN (int,int) ;
 scalar_t__ get_rac (int *,int *) ;

__attribute__((used)) static inline int get_symbol(RangeCoder *c, uint8_t *state, int is_signed){
    if(get_rac(c, state+0))
        return 0;
    else{
        int i, e;
        unsigned a;
        e= 0;
        while(get_rac(c, state+1 + FFMIN(e,9))){
            e++;
            if (e > 31)
                return AVERROR_INVALIDDATA;
        }

        a= 1;
        for(i=e-1; i>=0; i--){
            a += a + get_rac(c, state+22 + FFMIN(i,9));
        }

        e= -(is_signed && get_rac(c, state+11 + FFMIN(e,10)));
        return (a^e)-e;
    }
}
