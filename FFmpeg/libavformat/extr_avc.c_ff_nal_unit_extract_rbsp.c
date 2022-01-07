
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int* av_malloc (scalar_t__) ;
 int memset (int*,int ,scalar_t__) ;

uint8_t *ff_nal_unit_extract_rbsp(const uint8_t *src, uint32_t src_len,
                                  uint32_t *dst_len, int header_len)
{
    uint8_t *dst;
    uint32_t i, len;

    dst = av_malloc(src_len + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!dst)
        return ((void*)0);


    i = len = 0;
    while (i < header_len && i < src_len)
        dst[len++] = src[i++];

    while (i + 2 < src_len)
        if (!src[i] && !src[i + 1] && src[i + 2] == 3) {
            dst[len++] = src[i++];
            dst[len++] = src[i++];
            i++;
        } else
            dst[len++] = src[i++];

    while (i < src_len)
        dst[len++] = src[i++];

    memset(dst + len, 0, AV_INPUT_BUFFER_PADDING_SIZE);

    *dst_len = len;
    return dst;
}
