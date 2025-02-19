
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int int16_t ;
struct TYPE_4__ {size_t* permutated; } ;
struct TYPE_5__ {int* qtable; TYPE_1__ scantable; } ;
typedef TYPE_2__ TgqContext ;
typedef int GetBitContext ;


 int get_bits (int *,int) ;
 int get_sbits (int *,int) ;
 int show_bits (int *,int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static void tgq_decode_block(TgqContext *s, int16_t block[64], GetBitContext *gb)
{
    uint8_t *perm = s->scantable.permutated;
    int i, j, value;
    block[0] = get_sbits(gb, 8) * s->qtable[0];
    for (i = 1; i < 64;) {
        switch (show_bits(gb, 3)) {
        case 4:
            block[perm[i++]] = 0;
        case 0:
            block[perm[i++]] = 0;
            skip_bits(gb, 3);
            break;
        case 5:
        case 1:
            skip_bits(gb, 2);
            value = get_bits(gb, 6);
            for (j = 0; j < value; j++)
                block[perm[i++]] = 0;
            break;
        case 6:
            skip_bits(gb, 3);
            block[perm[i]] = -s->qtable[perm[i]];
            i++;
            break;
        case 2:
            skip_bits(gb, 3);
            block[perm[i]] = s->qtable[perm[i]];
            i++;
            break;
        case 7:
        case 3:
            skip_bits(gb, 2);
            if (show_bits(gb, 6) == 0x3F) {
                skip_bits(gb, 6);
                block[perm[i]] = get_sbits(gb, 8) * s->qtable[perm[i]];
            } else {
                block[perm[i]] = get_sbits(gb, 6) * s->qtable[perm[i]];
            }
            i++;
            break;
        }
    }
    block[0] += 128 << 4;
}
