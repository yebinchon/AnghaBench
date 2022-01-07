
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;


 int common_hv_8ht_8vt_and_aver_dst_8w_msa (int const*,int,int *,int,int const*,int const*,int) ;

__attribute__((used)) static void common_hv_8ht_8vt_and_aver_dst_64w_msa(const uint8_t *src,
                                                   int32_t src_stride,
                                                   uint8_t *dst,
                                                   int32_t dst_stride,
                                                   const int8_t *filter_horiz,
                                                   const int8_t *filter_vert,
                                                   int32_t height)
{
    int32_t multiple8_cnt;

    for (multiple8_cnt = 8; multiple8_cnt--;) {
        common_hv_8ht_8vt_and_aver_dst_8w_msa(src, src_stride, dst, dst_stride,
                                              filter_horiz, filter_vert,
                                              height);

        src += 8;
        dst += 8;
    }
}
