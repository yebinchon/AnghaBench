
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT_POS (int,int) ;
 int BIT_STR (int,int,int) ;
 int decode_1p_track (int*,int,int,int) ;
 int decode_2p_track (int*,int,int,int) ;
 int decode_3p_track (int*,int,int,int) ;
 int decode_4p_track (int*,int,int,int) ;
 int decode_5p_track (int*,int,int,int) ;

__attribute__((used)) static void decode_6p_track(int *out, int code, int m, int off)
{
    int b_offset = 1 << (m - 1);

    int half_more = BIT_POS(code, 6*m - 5) << (m - 1);
    int half_other = b_offset - half_more;

    switch (BIT_STR(code, 6*m - 4, 2)) {
    case 0:
        decode_1p_track(out, BIT_STR(code, 0, m),
                        m - 1, off + half_more);
        decode_5p_track(out + 1, BIT_STR(code, m, 5*m - 5),
                        m - 1, off + half_more);
        break;
    case 1:
        decode_1p_track(out, BIT_STR(code, 0, m),
                        m - 1, off + half_other);
        decode_5p_track(out + 1, BIT_STR(code, m, 5*m - 5),
                        m - 1, off + half_more);
        break;
    case 2:
        decode_2p_track(out, BIT_STR(code, 0, 2*m - 1),
                        m - 1, off + half_other);
        decode_4p_track(out + 2, BIT_STR(code, 2*m - 1, 4*m - 4),
                        m - 1, off + half_more);
        break;
    case 3:
        decode_3p_track(out, BIT_STR(code, 3*m - 2, 3*m - 2),
                        m - 1, off);
        decode_3p_track(out + 3, BIT_STR(code, 0, 3*m - 2),
                        m - 1, off + b_offset);
        break;
    }
}
