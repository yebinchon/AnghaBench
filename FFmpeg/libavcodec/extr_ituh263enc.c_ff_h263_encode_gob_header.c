
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mb_num; int qscale; scalar_t__ pict_type; int gob_index; int pb; scalar_t__ h263_slice_structured; } ;
typedef TYPE_1__ MpegEncContext ;


 scalar_t__ AV_PICTURE_TYPE_I ;
 int ff_h263_encode_mba (TYPE_1__*) ;
 int put_bits (int *,int,int) ;

void ff_h263_encode_gob_header(MpegEncContext * s, int mb_line)
{
    put_bits(&s->pb, 17, 1);

    if(s->h263_slice_structured){
        put_bits(&s->pb, 1, 1);

        ff_h263_encode_mba(s);

        if(s->mb_num > 1583)
            put_bits(&s->pb, 1, 1);
        put_bits(&s->pb, 5, s->qscale);
        put_bits(&s->pb, 1, 1);
        put_bits(&s->pb, 2, s->pict_type == AV_PICTURE_TYPE_I);
    }else{
        int gob_number= mb_line / s->gob_index;

        put_bits(&s->pb, 5, gob_number);
        put_bits(&s->pb, 2, s->pict_type == AV_PICTURE_TYPE_I);
        put_bits(&s->pb, 5, s->qscale);
    }
}
