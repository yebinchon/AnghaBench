
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ width; scalar_t__ height; int crop_left; int crop_right; scalar_t__ crop_top; scalar_t__ crop_bottom; scalar_t__* data; int format; } ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ AVPixFmtDescriptor ;
typedef TYPE_2__ AVFrame ;


 int AVERROR (int ) ;
 int AVERROR_BUG ;
 int AV_FRAME_CROP_UNALIGNED ;
 int AV_PIX_FMT_FLAG_BITSTREAM ;
 int AV_PIX_FMT_FLAG_HWACCEL ;
 int EINVAL ;
 int ERANGE ;
 int FFMIN (int,int) ;
 int INT_MAX ;
 TYPE_1__* av_pix_fmt_desc_get (int ) ;
 int calc_cropping_offsets (size_t*,TYPE_2__*,TYPE_1__ const*) ;
 int ff_ctz (size_t) ;

int av_frame_apply_cropping(AVFrame *frame, int flags)
{
    const AVPixFmtDescriptor *desc;
    size_t offsets[4];
    int i;

    if (!(frame->width > 0 && frame->height > 0))
        return AVERROR(EINVAL);

    if (frame->crop_left >= INT_MAX - frame->crop_right ||
        frame->crop_top >= INT_MAX - frame->crop_bottom ||
        (frame->crop_left + frame->crop_right) >= frame->width ||
        (frame->crop_top + frame->crop_bottom) >= frame->height)
        return AVERROR(ERANGE);

    desc = av_pix_fmt_desc_get(frame->format);
    if (!desc)
        return AVERROR_BUG;





    if (desc->flags & (AV_PIX_FMT_FLAG_BITSTREAM | AV_PIX_FMT_FLAG_HWACCEL)) {
        frame->width -= frame->crop_right;
        frame->height -= frame->crop_bottom;
        frame->crop_right = 0;
        frame->crop_bottom = 0;
        return 0;
    }


    calc_cropping_offsets(offsets, frame, desc);


    if (!(flags & AV_FRAME_CROP_UNALIGNED)) {
        int log2_crop_align = frame->crop_left ? ff_ctz(frame->crop_left) : INT_MAX;
        int min_log2_align = INT_MAX;

        for (i = 0; frame->data[i]; i++) {
            int log2_align = offsets[i] ? ff_ctz(offsets[i]) : INT_MAX;
            min_log2_align = FFMIN(log2_align, min_log2_align);
        }



        if (log2_crop_align < min_log2_align)
            return AVERROR_BUG;

        if (min_log2_align < 5) {
            frame->crop_left &= ~((1 << (5 + log2_crop_align - min_log2_align)) - 1);
            calc_cropping_offsets(offsets, frame, desc);
        }
    }

    for (i = 0; frame->data[i]; i++)
        frame->data[i] += offsets[i];

    frame->width -= (frame->crop_left + frame->crop_right);
    frame->height -= (frame->crop_top + frame->crop_bottom);
    frame->crop_left = 0;
    frame->crop_right = 0;
    frame->crop_top = 0;
    frame->crop_bottom = 0;

    return 0;
}
