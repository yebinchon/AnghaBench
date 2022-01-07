
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MpegEncContext ;
typedef int GetBitContext ;


 int get_bits (int *,int) ;

__attribute__((used)) static int mpeg4_decode_profile_level(MpegEncContext *s, GetBitContext *gb, int *profile, int *level)
{

    *profile = get_bits(gb, 4);
    *level = get_bits(gb, 4);


    if (*profile == 0 && *level == 8) {
        *level = 0;
    }

    return 0;
}
