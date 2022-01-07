
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int bpm; int* block_sizes; } ;
struct TYPE_5__ {int cno; } ;
typedef TYPE_1__ EncBlockInfo ;
typedef TYPE_2__ AVDVProfile ;



__attribute__((used)) static inline void dv_revise_cnos(uint8_t *dif, EncBlockInfo *blk, const AVDVProfile *profile)
{
    uint8_t *data;
    int mb_index, i;

    for (mb_index = 0; mb_index < 5; mb_index++) {
        data = dif + mb_index*80 + 4;
        for (i = 0; i < profile->bpm; i++) {

            data[1] &= 0xCF;

            data[1] |= blk[profile->bpm*mb_index+i].cno << 4;

            data += profile->block_sizes[i] >> 3;
        }
    }
}
