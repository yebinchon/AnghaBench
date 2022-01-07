
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mb_num; unsigned int mb_y; unsigned int gob_index; unsigned int mb_height; void* qscale; int gb; scalar_t__ mb_x; int avctx; scalar_t__ h263_slice_structured; } ;
typedef TYPE_1__ MpegEncContext ;


 int FFMIN (int,int) ;
 scalar_t__ check_marker (int ,int *,char*) ;
 int ff_h263_decode_mba (TYPE_1__*) ;
 void* get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int get_bits_left (int *) ;
 unsigned int show_bits (int *,int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int h263_decode_gob_header(MpegEncContext *s)
{
    unsigned int val, gob_number;
    int left;


    val = show_bits(&s->gb, 16);
    if(val)
        return -1;


    skip_bits(&s->gb, 16);
    left= get_bits_left(&s->gb);
    left = FFMIN(left, 32);

    for(;left>13; left--){
        if(get_bits1(&s->gb)) break;
    }
    if(left<=13)
        return -1;

    if(s->h263_slice_structured){
        if(check_marker(s->avctx, &s->gb, "before MBA")==0)
            return -1;

        ff_h263_decode_mba(s);

        if(s->mb_num > 1583)
            if(check_marker(s->avctx, &s->gb, "after MBA")==0)
                return -1;

        s->qscale = get_bits(&s->gb, 5);
        if(check_marker(s->avctx, &s->gb, "after SQUANT")==0)
            return -1;
        skip_bits(&s->gb, 2);
    }else{
        gob_number = get_bits(&s->gb, 5);
        s->mb_x= 0;
        s->mb_y= s->gob_index* gob_number;
        skip_bits(&s->gb, 2);
        s->qscale = get_bits(&s->gb, 5);
    }

    if(s->mb_y >= s->mb_height)
        return -1;

    if(s->qscale==0)
        return -1;

    return 0;
}
