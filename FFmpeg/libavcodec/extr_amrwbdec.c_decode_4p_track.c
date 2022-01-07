
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT_POS (int,int) ;
 int BIT_STR (int,int,int) ;
 int decode_1p_track (int*,int,int,int) ;
 int decode_2p_track (int*,int,int,int) ;
 int decode_3p_track (int*,int,int,int) ;

__attribute__((used)) static void decode_4p_track(int *out, int code, int m, int off)
{
    int half_4p, subhalf_2p;
    int b_offset = 1 << (m - 1);

    switch (BIT_STR(code, 4*m - 2, 2)) {
    case 0:
        half_4p = BIT_POS(code, 4*m - 3) << (m - 1);
        subhalf_2p = BIT_POS(code, 2*m - 3) << (m - 2);

        decode_2p_track(out, BIT_STR(code, 0, 2*m - 3),
                        m - 2, off + half_4p + subhalf_2p);
        decode_2p_track(out + 2, BIT_STR(code, 2*m - 2, 2*m - 1),
                        m - 1, off + half_4p);
        break;
    case 1:
        decode_1p_track(out, BIT_STR(code, 3*m - 2, m),
                        m - 1, off);
        decode_3p_track(out + 1, BIT_STR(code, 0, 3*m - 2),
                        m - 1, off + b_offset);
        break;
    case 2:
        decode_2p_track(out, BIT_STR(code, 2*m - 1, 2*m - 1),
                        m - 1, off);
        decode_2p_track(out + 2, BIT_STR(code, 0, 2*m - 1),
                        m - 1, off + b_offset);
        break;
    case 3:
        decode_3p_track(out, BIT_STR(code, m, 3*m - 2),
                        m - 1, off);
        decode_1p_track(out + 3, BIT_STR(code, 0, m),
                        m - 1, off + b_offset);
        break;
    }
}
