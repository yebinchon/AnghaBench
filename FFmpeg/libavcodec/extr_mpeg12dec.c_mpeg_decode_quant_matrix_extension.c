
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int chroma_inter_matrix; int gb; int chroma_intra_matrix; int * inter_matrix; int * intra_matrix; int avctx; } ;
typedef TYPE_1__ MpegEncContext ;


 int ff_dlog (int ,char*) ;
 scalar_t__ get_bits1 (int *) ;
 int load_matrix (TYPE_1__*,int ,int *,int) ;

__attribute__((used)) static void mpeg_decode_quant_matrix_extension(MpegEncContext *s)
{
    ff_dlog(s->avctx, "matrix extension\n");

    if (get_bits1(&s->gb))
        load_matrix(s, s->chroma_intra_matrix, s->intra_matrix, 1);
    if (get_bits1(&s->gb))
        load_matrix(s, s->chroma_inter_matrix, s->inter_matrix, 0);
    if (get_bits1(&s->gb))
        load_matrix(s, s->chroma_intra_matrix, ((void*)0), 1);
    if (get_bits1(&s->gb))
        load_matrix(s, s->chroma_inter_matrix, ((void*)0), 0);
}
