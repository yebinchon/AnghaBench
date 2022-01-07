
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int is_md5; void*** md5; } ;
typedef TYPE_1__ HEVCSEIPictureHash ;
typedef int GetBitContext ;


 void* get_bits (int *,int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int decode_nal_sei_decoded_picture_hash(HEVCSEIPictureHash *s, GetBitContext *gb)
{
    int cIdx, i;
    uint8_t hash_type;


    hash_type = get_bits(gb, 8);

    for (cIdx = 0; cIdx < 3 ; cIdx++) {
        if (hash_type == 0) {
            s->is_md5 = 1;
            for (i = 0; i < 16; i++)
                s->md5[cIdx][i] = get_bits(gb, 8);
        } else if (hash_type == 1) {

            skip_bits(gb, 16);
        } else if (hash_type == 2) {

            skip_bits(gb, 32);
        }
    }
    return 0;
}
