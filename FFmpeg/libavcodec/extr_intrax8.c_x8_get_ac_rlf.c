
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int gb; TYPE_1__** j_ac_vlc; } ;
struct TYPE_4__ {int table; } ;
typedef TYPE_2__ IntraX8Context ;


 int AC_VLC_BITS ;
 int AC_VLC_MTD ;
 int* ac_decode_table ;
 int get_bits (int ,int) ;
 int get_bits1 (int ) ;
 int get_vlc2 (int ,int ,int ,int ) ;

__attribute__((used)) static void x8_get_ac_rlf(IntraX8Context *const w, const int mode,
                          int *const run, int *const level, int *const final)
{
    int i, e;


    i = get_vlc2(w->gb, w->j_ac_vlc[mode]->table, AC_VLC_BITS, AC_VLC_MTD);

    if (i < 46) {
        int t, l;
        if (i < 0) {
            *level =
            *final =
            *run = 64;
            return;
        }
        *final =
        t = i > 22;
        i -= 23 * t;



        l = (0xE50000 >> (i & 0x1E)) & 3;



        t = 0x01030F >> (l << 3);

        *run = i & t;
        *level = l;
    } else if (i < 73) {
        uint32_t sm;
        uint32_t mask;

        i -= 46;
        sm = ac_decode_table[i];

        e = get_bits(w->gb, sm & 0xF);
        sm >>= 8;
        mask = sm & 0xff;
        sm >>= 8;

        *run = (sm & 0xff) + (e & mask);
        *level = (sm >> 8) + (e & ~mask);
        *final = i > (58 - 46);
    } else if (i < 75) {
        static const uint8_t crazy_mix_runlevel[32] = {
            0x22, 0x32, 0x33, 0x53, 0x23, 0x42, 0x43, 0x63,
            0x24, 0x52, 0x34, 0x73, 0x25, 0x62, 0x44, 0x83,
            0x26, 0x72, 0x35, 0x54, 0x27, 0x82, 0x45, 0x64,
            0x28, 0x92, 0x36, 0x74, 0x29, 0xa2, 0x46, 0x84,
        };

        *final = !(i & 1);
        e = get_bits(w->gb, 5);
        *run = crazy_mix_runlevel[e] >> 4;
        *level = crazy_mix_runlevel[e] & 0x0F;
    } else {
        *level = get_bits(w->gb, 7 - 3 * (i & 1));
        *run = get_bits(w->gb, 6);
        *final = get_bits1(w->gb);
    }
    return;
}
