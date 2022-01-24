#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_6__ {int flags2; scalar_t__ debug_mv; } ;
struct TYPE_5__ {int alloc_mb_width; int alloc_mb_height; void** ref_index_buf; void** motion_val_buf; void* mb_mean_buf; void* mc_mb_var_buf; void* mb_var_buf; void* mb_type_buf; void* qscale_table_buf; void* mbskip_table_buf; } ;
typedef  TYPE_1__ Picture ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_CODEC_FLAG2_EXPORT_MVS ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FMT_H263 ; 
 void* FUNC1 (int const) ; 

__attribute__((used)) static int FUNC2(AVCodecContext *avctx, Picture *pic, int encoding, int out_format,
                                int mb_stride, int mb_width, int mb_height, int b8_stride)
{
    const int big_mb_num    = mb_stride * (mb_height + 1) + 1;
    const int mb_array_size = mb_stride * mb_height;
    const int b8_array_size = b8_stride * mb_height * 2;
    int i;


    pic->mbskip_table_buf = FUNC1(mb_array_size + 2);
    pic->qscale_table_buf = FUNC1(big_mb_num + mb_stride);
    pic->mb_type_buf      = FUNC1((big_mb_num + mb_stride) *
                                             sizeof(uint32_t));
    if (!pic->mbskip_table_buf || !pic->qscale_table_buf || !pic->mb_type_buf)
        return FUNC0(ENOMEM);

    if (encoding) {
        pic->mb_var_buf    = FUNC1(mb_array_size * sizeof(int16_t));
        pic->mc_mb_var_buf = FUNC1(mb_array_size * sizeof(int16_t));
        pic->mb_mean_buf   = FUNC1(mb_array_size);
        if (!pic->mb_var_buf || !pic->mc_mb_var_buf || !pic->mb_mean_buf)
            return FUNC0(ENOMEM);
    }

    if (out_format == FMT_H263 || encoding ||
#if FF_API_DEBUG_MV
        avctx->debug_mv ||
#endif
        (avctx->flags2 & AV_CODEC_FLAG2_EXPORT_MVS)) {
        int mv_size        = 2 * (b8_array_size + 4) * sizeof(int16_t);
        int ref_index_size = 4 * mb_array_size;

        for (i = 0; mv_size && i < 2; i++) {
            pic->motion_val_buf[i] = FUNC1(mv_size);
            pic->ref_index_buf[i]  = FUNC1(ref_index_size);
            if (!pic->motion_val_buf[i] || !pic->ref_index_buf[i])
                return FUNC0(ENOMEM);
        }
    }

    pic->alloc_mb_width  = mb_width;
    pic->alloc_mb_height = mb_height;

    return 0;
}