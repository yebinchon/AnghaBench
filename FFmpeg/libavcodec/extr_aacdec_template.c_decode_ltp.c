
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t lag; int * used; int coef; } ;
typedef TYPE_1__ LongTermPrediction ;
typedef int GetBitContext ;


 int FFMIN (int ,int ) ;
 int MAX_LTP_LONG_SFB ;
 size_t get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int * ltp_coef ;

__attribute__((used)) static void decode_ltp(LongTermPrediction *ltp,
                       GetBitContext *gb, uint8_t max_sfb)
{
    int sfb;

    ltp->lag = get_bits(gb, 11);
    ltp->coef = ltp_coef[get_bits(gb, 3)];
    for (sfb = 0; sfb < FFMIN(max_sfb, MAX_LTP_LONG_SFB); sfb++)
        ltp->used[sfb] = get_bits1(gb);
}
