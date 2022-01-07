
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int gob_number; } ;
struct TYPE_8__ {long long picture_number; scalar_t__ pict_type; scalar_t__ mb_skip_run; int pb; int height; int width; TYPE_2__* avctx; int ptr_lastgob; } ;
struct TYPE_6__ {long long num; long long den; } ;
struct TYPE_7__ {TYPE_1__ time_base; } ;
typedef TYPE_3__ MpegEncContext ;
typedef TYPE_4__ H261Context ;


 scalar_t__ AV_PICTURE_TYPE_I ;
 int avpriv_align_put_bits (int *) ;
 int ff_h261_get_picture_format (int ,int ) ;
 int put_bits (int *,int,int) ;
 int put_bits_ptr (int *) ;
 int put_sbits (int *,int,int) ;

void ff_h261_encode_picture_header(MpegEncContext *s, int picture_number)
{
    H261Context *h = (H261Context *)s;
    int format, temp_ref;

    avpriv_align_put_bits(&s->pb);


    s->ptr_lastgob = put_bits_ptr(&s->pb);

    put_bits(&s->pb, 20, 0x10);

    temp_ref = s->picture_number * 30000LL * s->avctx->time_base.num /
               (1001LL * s->avctx->time_base.den);
    put_sbits(&s->pb, 5, temp_ref);

    put_bits(&s->pb, 1, 0);
    put_bits(&s->pb, 1, 0);
    put_bits(&s->pb, 1, s->pict_type == AV_PICTURE_TYPE_I);

    format = ff_h261_get_picture_format(s->width, s->height);

    put_bits(&s->pb, 1, format);

    put_bits(&s->pb, 1, 1);
    put_bits(&s->pb, 1, 1);

    put_bits(&s->pb, 1, 0);
    if (format == 0)
        h->gob_number = -1;
    else
        h->gob_number = 0;
    s->mb_skip_run = 0;
}
