
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int subband_coef_sign ;
typedef int subband_coef_index ;
struct TYPE_9__ {int samples_per_channel; int (* scalar_dequant ) (TYPE_2__*,int,int,int*,int*,float*) ;} ;
struct TYPE_8__ {int total_subbands; } ;
typedef TYPE_1__ COOKSubpacket ;
typedef TYPE_2__ COOKContext ;


 int SUBBAND_SIZE ;
 int memset (int*,int ,int) ;
 int stub1 (TYPE_2__*,int,int,int*,int*,float*) ;
 scalar_t__ unpack_SQVH (TYPE_2__*,TYPE_1__*,int,int*,int*) ;

__attribute__((used)) static void decode_vectors(COOKContext *q, COOKSubpacket *p, int *category,
                           int *quant_index_table, float *mlt_buffer)
{


    int subband_coef_index[SUBBAND_SIZE];


    int subband_coef_sign[SUBBAND_SIZE];
    int band, j;
    int index = 0;

    for (band = 0; band < p->total_subbands; band++) {
        index = category[band];
        if (category[band] < 7) {
            if (unpack_SQVH(q, p, category[band], subband_coef_index, subband_coef_sign)) {
                index = 7;
                for (j = 0; j < p->total_subbands; j++)
                    category[band + j] = 7;
            }
        }
        if (index >= 7) {
            memset(subband_coef_index, 0, sizeof(subband_coef_index));
            memset(subband_coef_sign, 0, sizeof(subband_coef_sign));
        }
        q->scalar_dequant(q, index, quant_index_table[band],
                          subband_coef_index, subband_coef_sign,
                          &mlt_buffer[band * SUBBAND_SIZE]);
    }


    if (p->total_subbands * SUBBAND_SIZE >= q->samples_per_channel)
        return;
}
