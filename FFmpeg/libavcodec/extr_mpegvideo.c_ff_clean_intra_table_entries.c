
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {int b8_stride; int* block_index; int** dc_val; int msmpeg4_version; int mb_stride; int mb_x; int mb_y; scalar_t__* mbintra_table; int ** ac_val; scalar_t__* coded_block; } ;
typedef TYPE_1__ MpegEncContext ;


 int memset (int ,int ,int) ;

void ff_clean_intra_table_entries(MpegEncContext *s)
{
    int wrap = s->b8_stride;
    int xy = s->block_index[0];

    s->dc_val[0][xy ] =
    s->dc_val[0][xy + 1 ] =
    s->dc_val[0][xy + wrap] =
    s->dc_val[0][xy + 1 + wrap] = 1024;

    memset(s->ac_val[0][xy ], 0, 32 * sizeof(int16_t));
    memset(s->ac_val[0][xy + wrap], 0, 32 * sizeof(int16_t));
    if (s->msmpeg4_version>=3) {
        s->coded_block[xy ] =
        s->coded_block[xy + 1 ] =
        s->coded_block[xy + wrap] =
        s->coded_block[xy + 1 + wrap] = 0;
    }

    wrap = s->mb_stride;
    xy = s->mb_x + s->mb_y * wrap;
    s->dc_val[1][xy] =
    s->dc_val[2][xy] = 1024;

    memset(s->ac_val[1][xy], 0, 16 * sizeof(int16_t));
    memset(s->ac_val[2][xy], 0, 16 * sizeof(int16_t));

    s->mbintra_table[xy]= 0;
}
