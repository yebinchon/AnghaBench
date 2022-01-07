
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int gb; TYPE_1__* sqvh; } ;
struct TYPE_7__ {scalar_t__ bits_per_subpacket; } ;
struct TYPE_6__ {int bits; int table; } ;
typedef TYPE_2__ COOKSubpacket ;
typedef TYPE_3__ COOKContext ;


 int get_bits1 (int *) ;
 scalar_t__ get_bits_count (int *) ;
 int get_vlc2 (int *,int ,int ,int) ;
 int* invradix_tab ;
 int* kmax_tab ;
 int* vd_tab ;
 int* vpr_tab ;

__attribute__((used)) static int unpack_SQVH(COOKContext *q, COOKSubpacket *p, int category,
                       int *subband_coef_index, int *subband_coef_sign)
{
    int i, j;
    int vlc, vd, tmp, result;

    vd = vd_tab[category];
    result = 0;
    for (i = 0; i < vpr_tab[category]; i++) {
        vlc = get_vlc2(&q->gb, q->sqvh[category].table, q->sqvh[category].bits, 3);
        if (p->bits_per_subpacket < get_bits_count(&q->gb)) {
            vlc = 0;
            result = 1;
        }
        for (j = vd - 1; j >= 0; j--) {
            tmp = (vlc * invradix_tab[category]) / 0x100000;
            subband_coef_index[vd * i + j] = vlc - tmp * (kmax_tab[category] + 1);
            vlc = tmp;
        }
        for (j = 0; j < vd; j++) {
            if (subband_coef_index[i * vd + j]) {
                if (get_bits_count(&q->gb) < p->bits_per_subpacket) {
                    subband_coef_sign[i * vd + j] = get_bits1(&q->gb);
                } else {
                    result = 1;
                    subband_coef_sign[i * vd + j] = 0;
                }
            } else {
                subband_coef_sign[i * vd + j] = 0;
            }
        }
    }
    return result;
}
