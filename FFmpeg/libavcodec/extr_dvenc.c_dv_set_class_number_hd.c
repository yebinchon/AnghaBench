
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef void* int16_t ;
struct TYPE_3__ {int* area_q; int* sign; int* save; int* bit_size; int min_qlevel; scalar_t__ cno; void** mb; } ;
typedef TYPE_1__ EncBlockInfo ;
typedef int DVVideoContext ;


 int FFABS (int) ;

__attribute__((used)) static inline void dv_set_class_number_hd(DVVideoContext *s,
                                          int16_t *blk, EncBlockInfo *bi,
                                          const uint8_t *zigzag_scan,
                                          const int *weight, int bias)
{
    int i, max = 0;


    bi->area_q[0] = 1;




    for (i = 0; i < 64; i += 2) {
        int level0, level1;


        level0 = blk[zigzag_scan[i+0]];
        level1 = blk[zigzag_scan[i+1]];


        bi->sign[i+0] = (level0>>31)&1;
        bi->sign[i+1] = (level1>>31)&1;


        level0 = FFABS(level0);
        level1 = FFABS(level1);


        level0 = (level0*weight[i+0] + 4096 + (1<<17)) >> 18;
        level1 = (level1*weight[i+1] + 4096 + (1<<17)) >> 18;


        bi->save[i+0] = level0;
        bi->save[i+1] = level1;


        if (bi->save[i+0] > max)
            max = bi->save[i+0];
        if (bi->save[i+1] > max)
            max = bi->save[i+1];
    }


    bi->mb[0] = blk[0];


    bi->bit_size[0] = 4;
    bi->bit_size[1] = bi->bit_size[2] = bi->bit_size[3] = 0;


    bi->min_qlevel = ((max+256) >> 8);

    bi->area_q[0] = 25;
    bi->cno = 0;
}
