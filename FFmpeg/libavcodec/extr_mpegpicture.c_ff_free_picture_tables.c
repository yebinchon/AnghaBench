
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ref_index_buf; int * motion_val_buf; int mb_type_buf; int qscale_table_buf; int mbskip_table_buf; int mb_mean_buf; int mc_mb_var_buf; int mb_var_buf; scalar_t__ alloc_mb_height; scalar_t__ alloc_mb_width; } ;
typedef TYPE_1__ Picture ;


 int av_buffer_unref (int *) ;

void ff_free_picture_tables(Picture *pic)
{
    int i;

    pic->alloc_mb_width =
    pic->alloc_mb_height = 0;

    av_buffer_unref(&pic->mb_var_buf);
    av_buffer_unref(&pic->mc_mb_var_buf);
    av_buffer_unref(&pic->mb_mean_buf);
    av_buffer_unref(&pic->mbskip_table_buf);
    av_buffer_unref(&pic->qscale_table_buf);
    av_buffer_unref(&pic->mb_type_buf);

    for (i = 0; i < 2; i++) {
        av_buffer_unref(&pic->motion_val_buf[i]);
        av_buffer_unref(&pic->ref_index_buf[i]);
    }
}
