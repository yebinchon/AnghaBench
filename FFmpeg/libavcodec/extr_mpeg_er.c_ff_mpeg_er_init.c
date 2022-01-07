
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mb_height; int mb_stride; int error_status_table; int er_temp_buffer; TYPE_1__* opaque; int decode_mb; int * dc_val; int mbintra_table; int mbskip_table; int b8_stride; int mb_width; int mb_num; int mb_index2xy; int avctx; } ;
struct TYPE_4__ {int mb_height; int mb_stride; int * dc_val; int mbintra_table; int mbskip_table; int b8_stride; int mb_width; int mb_num; int mb_index2xy; int avctx; TYPE_2__ er; } ;
typedef TYPE_1__ MpegEncContext ;
typedef TYPE_2__ ERContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FF_ARRAY_ELEMS (int *) ;
 int av_freep (int *) ;
 int av_malloc (int) ;
 int av_mallocz (int) ;
 int mpeg_er_decode_mb ;

int ff_mpeg_er_init(MpegEncContext *s)
{
    ERContext *er = &s->er;
    int mb_array_size = s->mb_height * s->mb_stride;
    int i;

    er->avctx = s->avctx;

    er->mb_index2xy = s->mb_index2xy;
    er->mb_num = s->mb_num;
    er->mb_width = s->mb_width;
    er->mb_height = s->mb_height;
    er->mb_stride = s->mb_stride;
    er->b8_stride = s->b8_stride;

    er->er_temp_buffer = av_malloc(s->mb_height * s->mb_stride * (4*sizeof(int) + 1));
    er->error_status_table = av_mallocz(mb_array_size);
    if (!er->er_temp_buffer || !er->error_status_table)
        goto fail;

    er->mbskip_table = s->mbskip_table;
    er->mbintra_table = s->mbintra_table;

    for (i = 0; i < FF_ARRAY_ELEMS(s->dc_val); i++)
        er->dc_val[i] = s->dc_val[i];

    er->decode_mb = mpeg_er_decode_mb;
    er->opaque = s;

    return 0;
fail:
    av_freep(&er->er_temp_buffer);
    av_freep(&er->error_status_table);
    return AVERROR(ENOMEM);
}
