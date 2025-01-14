
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int16_t ;
struct TYPE_3__ {int mb_stride; int mb_height; int mb_width; void* ref_index_pool; void* motion_val_pool; void* mb_type_pool; void* qscale_table_pool; } ;
typedef TYPE_1__ H264Context ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_buffer_allocz ;
 void* av_buffer_pool_init (int const,int ) ;
 int av_buffer_pool_uninit (void**) ;

__attribute__((used)) static int init_table_pools(H264Context *h)
{
    const int big_mb_num = h->mb_stride * (h->mb_height + 1) + 1;
    const int mb_array_size = h->mb_stride * h->mb_height;
    const int b4_stride = h->mb_width * 4 + 1;
    const int b4_array_size = b4_stride * h->mb_height * 4;

    h->qscale_table_pool = av_buffer_pool_init(big_mb_num + h->mb_stride,
                                               av_buffer_allocz);
    h->mb_type_pool = av_buffer_pool_init((big_mb_num + h->mb_stride) *
                                               sizeof(uint32_t), av_buffer_allocz);
    h->motion_val_pool = av_buffer_pool_init(2 * (b4_array_size + 4) *
                                               sizeof(int16_t), av_buffer_allocz);
    h->ref_index_pool = av_buffer_pool_init(4 * mb_array_size, av_buffer_allocz);

    if (!h->qscale_table_pool || !h->mb_type_pool || !h->motion_val_pool ||
        !h->ref_index_pool) {
        av_buffer_pool_uninit(&h->qscale_table_pool);
        av_buffer_pool_uninit(&h->mb_type_pool);
        av_buffer_pool_uninit(&h->motion_val_pool);
        av_buffer_pool_uninit(&h->ref_index_pool);
        return AVERROR(ENOMEM);
    }

    return 0;
}
