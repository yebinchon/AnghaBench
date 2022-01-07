
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bits; int table; } ;
typedef TYPE_1__ VLC ;
typedef int GetBitContext ;


 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*,int) ;
 int get_bits (int *,int) ;
 int get_vlc2 (int *,int ,int ,int) ;
 int* vlc_stage3_values ;

__attribute__((used)) static int qdm2_get_vlc(GetBitContext *gb, const VLC *vlc, int flag, int depth)
{
    int value;

    value = get_vlc2(gb, vlc->table, vlc->bits, depth);


    if (value-- == 0)
        value = get_bits(gb, get_bits(gb, 3) + 1);


    if (flag) {
        int tmp;

        if (value >= 60) {
            av_log(((void*)0), AV_LOG_ERROR, "value %d in qdm2_get_vlc too large\n", value);
            return 0;
        }

        tmp= vlc_stage3_values[value];

        if ((value & ~3) > 0)
            tmp += get_bits(gb, (value >> 2));
        value = tmp;
    }

    return value;
}
