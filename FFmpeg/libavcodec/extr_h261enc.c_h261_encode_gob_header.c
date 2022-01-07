
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int gob_number; } ;
struct TYPE_4__ {int qscale; scalar_t__*** last_mv; scalar_t__ mb_skip_run; int pb; int height; int width; } ;
typedef TYPE_1__ MpegEncContext ;
typedef TYPE_2__ H261Context ;


 scalar_t__ ff_h261_get_picture_format (int ,int ) ;
 int put_bits (int *,int,int) ;

__attribute__((used)) static void h261_encode_gob_header(MpegEncContext *s, int mb_line)
{
    H261Context *h = (H261Context *)s;
    if (ff_h261_get_picture_format(s->width, s->height) == 0) {
        h->gob_number += 2;
    } else {
        h->gob_number++;
    }
    put_bits(&s->pb, 16, 1);
    put_bits(&s->pb, 4, h->gob_number);
    put_bits(&s->pb, 5, s->qscale);
    put_bits(&s->pb, 1, 0);
    s->mb_skip_run = 0;
    s->last_mv[0][0][0] = 0;
    s->last_mv[0][0][1] = 0;
}
