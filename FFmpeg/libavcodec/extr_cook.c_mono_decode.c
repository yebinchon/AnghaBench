
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int gb; int num_vectors; } ;
struct TYPE_12__ {int total_subbands; int log2_numvector_size; } ;
typedef TYPE_1__ COOKSubpacket ;
typedef TYPE_2__ COOKContext ;


 int AVERROR_INVALIDDATA ;
 int categorize (TYPE_2__*,TYPE_1__*,int*,int*,int*) ;
 int decode_envelope (TYPE_2__*,TYPE_1__*,int*) ;
 int decode_vectors (TYPE_2__*,TYPE_1__*,int*,int*,float*) ;
 int expand_category (TYPE_2__*,int*,int*) ;
 int get_bits (int *,int ) ;

__attribute__((used)) static int mono_decode(COOKContext *q, COOKSubpacket *p, float *mlt_buffer)
{
    int category_index[128] = { 0 };
    int category[128] = { 0 };
    int quant_index_table[102];
    int res, i;

    if ((res = decode_envelope(q, p, quant_index_table)) < 0)
        return res;
    q->num_vectors = get_bits(&q->gb, p->log2_numvector_size);
    categorize(q, p, quant_index_table, category, category_index);
    expand_category(q, category, category_index);
    for (i=0; i<p->total_subbands; i++) {
        if (category[i] > 7)
            return AVERROR_INVALIDDATA;
    }
    decode_vectors(q, p, category, quant_index_table, mlt_buffer);

    return 0;
}
