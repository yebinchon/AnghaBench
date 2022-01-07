
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 short W0 ;
 short W1 ;
 short W2 ;
 short W3 ;
 short W5 ;
 short W6 ;
 short W7 ;

__attribute__((used)) static void wmv2_idct_col_mmi(short * b)
{
    int s1, s2;
    int a0, a1, a2, a3, a4, a5, a6, a7;


    a0 = (W0 * b[ 0] + W0 * b[32] ) >> 3;
    a1 = (W1 * b[ 8] + W7 * b[56] + 4) >> 3;
    a2 = (W2 * b[16] + W6 * b[48] + 4) >> 3;
    a3 = (W3 * b[40] - W5 * b[24] + 4) >> 3;
    a4 = (W0 * b[ 0] - W0 * b[32] ) >> 3;
    a5 = (W5 * b[40] + W3 * b[24] + 4) >> 3;
    a6 = (W6 * b[16] - W2 * b[48] + 4) >> 3;
    a7 = (W7 * b[ 8] - W1 * b[56] + 4) >> 3;


    s1 = (181 * (a1 - a5 + a7 - a3) + 128) >> 8;
    s2 = (181 * (a1 - a5 - a7 + a3) + 128) >> 8;


    b[ 0] = (a0 + a2 + a1 + a5 + 8192) >> 14;
    b[ 8] = (a4 + a6 + s1 + 8192) >> 14;
    b[16] = (a4 - a6 + s2 + 8192) >> 14;
    b[24] = (a0 - a2 + a7 + a3 + 8192) >> 14;

    b[32] = (a0 - a2 - a7 - a3 + 8192) >> 14;
    b[40] = (a4 - a6 - s2 + 8192) >> 14;
    b[48] = (a4 + a6 - s1 + 8192) >> 14;
    b[56] = (a0 + a2 - a1 - a5 + 8192) >> 14;
}
