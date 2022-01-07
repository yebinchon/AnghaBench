
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int qpel_mc_func ;
typedef int op_pixels_func ;
struct TYPE_4__ {scalar_t__ out_format; } ;
typedef TYPE_1__ MpegEncContext ;


 scalar_t__ FMT_MPEG1 ;
 int mpv_motion_internal (TYPE_1__*,int *,int *,int *,int,int **,int **,int **,int) ;

void ff_mpv_motion(MpegEncContext *s,
                   uint8_t *dest_y, uint8_t *dest_cb,
                   uint8_t *dest_cr, int dir,
                   uint8_t **ref_picture,
                   op_pixels_func (*pix_op)[4],
                   qpel_mc_func (*qpix_op)[16])
{

    if (s->out_format == FMT_MPEG1)
        mpv_motion_internal(s, dest_y, dest_cb, dest_cr, dir,
                            ref_picture, pix_op, qpix_op, 1);
    else

        mpv_motion_internal(s, dest_y, dest_cb, dest_cr, dir,
                            ref_picture, pix_op, qpix_op, 0);
}
