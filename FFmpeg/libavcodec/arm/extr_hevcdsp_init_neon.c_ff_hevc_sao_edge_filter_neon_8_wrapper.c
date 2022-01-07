
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int const ptrdiff_t ;
typedef int int8_t ;
typedef int int16_t ;
struct TYPE_4__ {int member_0; int member_1; } ;
struct TYPE_3__ {int member_0; int member_1; } ;


 int AV_INPUT_BUFFER_PADDING_SIZE ;
 int MAX_PB_SIZE ;
 int ff_hevc_sao_edge_filter_neon_8 (int*,int*,int const,int const,int,int,int,int,int *,int*) ;

void ff_hevc_sao_edge_filter_neon_8_wrapper(uint8_t *_dst, uint8_t *_src, ptrdiff_t stride_dst, int16_t *sao_offset_val,
                                  int eo, int width, int height) {
    static uint8_t edge_idx[] = { 1, 2, 0, 3, 4 };
    static const int8_t pos[4][2][2] = {
        { { -1, 0 }, { 1, 0 } },
        { { 0, -1 }, { 0, 1 } },
        { { -1, -1 }, { 1, 1 } },
        { { 1, -1 }, { -1, 1 } },
    };
    uint8_t *dst = _dst;
    uint8_t *src = _src;
    int a_stride, b_stride;
    ptrdiff_t stride_src = (2*MAX_PB_SIZE + AV_INPUT_BUFFER_PADDING_SIZE);

    a_stride = pos[eo][0][0] + pos[eo][0][1] * stride_src;
    b_stride = pos[eo][1][0] + pos[eo][1][1] * stride_src;

    ff_hevc_sao_edge_filter_neon_8(dst, src, stride_dst, stride_src, width, height, a_stride, b_stride, sao_offset_val, edge_idx);
}
