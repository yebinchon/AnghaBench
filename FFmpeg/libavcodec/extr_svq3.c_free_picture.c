
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int f; int mb_type_buf; int * ref_index_buf; int * motion_val_buf; } ;
typedef TYPE_1__ SVQ3Frame ;
typedef int AVCodecContext ;


 int av_buffer_unref (int *) ;
 int av_frame_unref (int ) ;

__attribute__((used)) static void free_picture(AVCodecContext *avctx, SVQ3Frame *pic)
{
    int i;
    for (i = 0; i < 2; i++) {
        av_buffer_unref(&pic->motion_val_buf[i]);
        av_buffer_unref(&pic->ref_index_buf[i]);
    }
    av_buffer_unref(&pic->mb_type_buf);

    av_frame_unref(pic->f);
}
