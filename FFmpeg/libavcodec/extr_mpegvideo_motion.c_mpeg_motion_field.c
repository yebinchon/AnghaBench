
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int op_pixels_func ;
struct TYPE_4__ {scalar_t__ out_format; } ;
typedef TYPE_1__ MpegEncContext ;


 scalar_t__ FMT_MPEG1 ;
 int mpeg_motion_internal (TYPE_1__*,int *,int *,int *,int,int,int,int **,int **,int,int,int,int,int ,int) ;

__attribute__((used)) static void mpeg_motion_field(MpegEncContext *s, uint8_t *dest_y,
                              uint8_t *dest_cb, uint8_t *dest_cr,
                              int bottom_field, int field_select,
                              uint8_t **ref_picture,
                              op_pixels_func (*pix_op)[4],
                              int motion_x, int motion_y, int h, int mb_y)
{

    if (s->out_format == FMT_MPEG1)
        mpeg_motion_internal(s, dest_y, dest_cb, dest_cr, 1,
                             bottom_field, field_select, ref_picture, pix_op,
                             motion_x, motion_y, h, 1, 0, mb_y);
    else

        mpeg_motion_internal(s, dest_y, dest_cb, dest_cr, 1,
                             bottom_field, field_select, ref_picture, pix_op,
                             motion_x, motion_y, h, 0, 0, mb_y);
}
