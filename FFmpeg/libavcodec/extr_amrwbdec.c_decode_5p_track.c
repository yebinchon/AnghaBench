
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT_POS (int,int) ;
 int BIT_STR (int,int,int) ;
 int decode_2p_track (int*,int ,int,int) ;
 int decode_3p_track (int*,int ,int,int) ;

__attribute__((used)) static void decode_5p_track(int *out, int code, int m, int off)
{
    int half_3p = BIT_POS(code, 5*m - 1) << (m - 1);

    decode_3p_track(out, BIT_STR(code, 2*m + 1, 3*m - 2),
                    m - 1, off + half_3p);

    decode_2p_track(out + 3, BIT_STR(code, 0, 2*m + 1), m, off);
}
