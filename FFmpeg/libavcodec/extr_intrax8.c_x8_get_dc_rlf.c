
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int table; } ;
struct TYPE_4__ {int quant; int gb; TYPE_3__** j_dc_vlc; } ;
typedef TYPE_1__ IntraX8Context ;


 int DC_VLC_BITS ;
 int DC_VLC_MTD ;
 int av_assert2 (int) ;
 int* dc_index_offset ;
 int get_bits (int ,int) ;
 int get_vlc2 (int ,int ,int ,int ) ;
 TYPE_3__** j_dc_vlc ;

__attribute__((used)) static int x8_get_dc_rlf(IntraX8Context *const w, const int mode,
                         int *const level, int *const final)
{
    int i, e, c;

    av_assert2(mode < 3);
    if (!w->j_dc_vlc[mode]) {
        int table_index = get_bits(w->gb, 3);

        w->j_dc_vlc[mode] = &j_dc_vlc[w->quant < 13][table_index];
    }

    i = get_vlc2(w->gb, w->j_dc_vlc[mode]->table, DC_VLC_BITS, DC_VLC_MTD);


    c = i > 16;
    *final = c;
    i -= 17 * c;

    if (i <= 0) {
        *level = 0;
        return -i;
    }
    c = (i + 1) >> 1;
    c -= c > 1;

    e = get_bits(w->gb, c);
    i = dc_index_offset[i] + (e >> 1);

    e = -(e & 1);
    *level = (i ^ e) - e;
    return 0;
}
