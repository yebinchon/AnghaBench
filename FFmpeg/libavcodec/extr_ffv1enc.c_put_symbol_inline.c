
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int RangeCoder ;


 int FFABS (int) ;
 int FFMIN (int,int) ;
 int av_log2 (int const) ;
 int put_rac (int *,int *,int const) ;

void put_symbol_inline(RangeCoder *c,
                                                          uint8_t *state, int v,
                                                          int is_signed,
                                                          uint64_t rc_stat[256][2],
                                                          uint64_t rc_stat2[32][2])
{
    int i;
    if (v) {
        const int a = FFABS(v);
        const int e = av_log2(a);
        do { if (rc_stat) { rc_stat[*(state + 0)][0]++; rc_stat2[(state + 0) - state][0]++; } put_rac(c, state + 0, 0); } while (0);
        if (e <= 9) {
            for (i = 0; i < e; i++)
                do { if (rc_stat) { rc_stat[*(state + 1 + i)][1]++; rc_stat2[(state + 1 + i) - state][1]++; } put_rac(c, state + 1 + i, 1); } while (0);
            do { if (rc_stat) { rc_stat[*(state + 1 + i)][0]++; rc_stat2[(state + 1 + i) - state][0]++; } put_rac(c, state + 1 + i, 0); } while (0);

            for (i = e - 1; i >= 0; i--)
                do { if (rc_stat) { rc_stat[*(state + 22 + i)][(a >> i) & 1]++; rc_stat2[(state + 22 + i) - state][(a >> i) & 1]++; } put_rac(c, state + 22 + i, (a >> i) & 1); } while (0);

            if (is_signed)
                do { if (rc_stat) { rc_stat[*(state + 11 + e)][v < 0]++; rc_stat2[(state + 11 + e) - state][v < 0]++; } put_rac(c, state + 11 + e, v < 0); } while (0);
        } else {
            for (i = 0; i < e; i++)
                do { if (rc_stat) { rc_stat[*(state + 1 + FFMIN(i, 9))][1]++; rc_stat2[(state + 1 + FFMIN(i, 9)) - state][1]++; } put_rac(c, state + 1 + FFMIN(i, 9), 1); } while (0);
            do { if (rc_stat) { rc_stat[*(state + 1 + 9)][0]++; rc_stat2[(state + 1 + 9) - state][0]++; } put_rac(c, state + 1 + 9, 0); } while (0);

            for (i = e - 1; i >= 0; i--)
                do { if (rc_stat) { rc_stat[*(state + 22 + FFMIN(i, 9))][(a >> i) & 1]++; rc_stat2[(state + 22 + FFMIN(i, 9)) - state][(a >> i) & 1]++; } put_rac(c, state + 22 + FFMIN(i, 9), (a >> i) & 1); } while (0);

            if (is_signed)
                do { if (rc_stat) { rc_stat[*(state + 11 + 10)][v < 0]++; rc_stat2[(state + 11 + 10) - state][v < 0]++; } put_rac(c, state + 11 + 10, v < 0); } while (0);
        }
    } else {
        do { if (rc_stat) { rc_stat[*(state + 0)][1]++; rc_stat2[(state + 0) - state][1]++; } put_rac(c, state + 0, 1); } while (0);
    }

}
