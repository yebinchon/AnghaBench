
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int RangeCoder ;


 int FFABS (int) ;
 int FFMIN (int const,int) ;
 int av_log2 (int const) ;
 int put_rac (int *,int *,int const) ;

__attribute__((used)) static inline void put_symbol(RangeCoder *c, uint8_t *state, int v, int is_signed){
    int i;

    if(v){
        const int a= FFABS(v);
        const int e= av_log2(a);
        const int el= FFMIN(e, 10);
        put_rac(c, state+0, 0);

        for(i=0; i<el; i++){
            put_rac(c, state+1+i, 1);
        }
        for(; i<e; i++){
            put_rac(c, state+1+9, 1);
        }
        put_rac(c, state+1+FFMIN(i,9), 0);

        for(i=e-1; i>=el; i--){
            put_rac(c, state+22+9, (a>>i)&1);
        }
        for(; i>=0; i--){
            put_rac(c, state+22+i, (a>>i)&1);
        }

        if(is_signed)
            put_rac(c, state+11 + el, v < 0);
    }else{
        put_rac(c, state+0, 1);
    }
}
