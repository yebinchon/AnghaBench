
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int mb_info_size; int mb_x; int mb_width; int mb_y; int gob_index; int qscale; int pb; int * mb_info_ptr; } ;
typedef TYPE_1__ MpegEncContext ;


 scalar_t__ CONFIG_H263_ENCODER ;
 int bytestream_put_byte (int **,int) ;
 int bytestream_put_le16 (int **,int) ;
 int bytestream_put_le32 (int **,int) ;
 int ff_h263_pred_motion (TYPE_1__*,int ,int ,int*,int*) ;
 int put_bits_count (int *) ;

__attribute__((used)) static void write_mb_info(MpegEncContext *s)
{
    uint8_t *ptr = s->mb_info_ptr + s->mb_info_size - 12;
    int offset = put_bits_count(&s->pb);
    int mba = s->mb_x + s->mb_width * (s->mb_y % s->gob_index);
    int gobn = s->mb_y / s->gob_index;
    int pred_x, pred_y;
    if (CONFIG_H263_ENCODER)
        ff_h263_pred_motion(s, 0, 0, &pred_x, &pred_y);
    bytestream_put_le32(&ptr, offset);
    bytestream_put_byte(&ptr, s->qscale);
    bytestream_put_byte(&ptr, gobn);
    bytestream_put_le16(&ptr, mba);
    bytestream_put_byte(&ptr, pred_x);
    bytestream_put_byte(&ptr, pred_y);

    bytestream_put_byte(&ptr, 0);
    bytestream_put_byte(&ptr, 0);
}
