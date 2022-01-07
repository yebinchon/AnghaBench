
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int FFMIN (int,int) ;
 int FFMIN3 (int,int,int) ;
 int av_log (int *,int ,char*) ;
 int memcpy (unsigned char*,unsigned char const*,int ) ;
 int memset (unsigned char*,int ,int ) ;

__attribute__((used)) static int cin_decode_rle(const unsigned char *src, int src_size,
                           unsigned char *dst, int dst_size)
{
    int len, code;
    unsigned char *dst_end = dst + dst_size;
    const unsigned char *src_end = src + src_size;

    while (src + 1 < src_end && dst < dst_end) {
        code = *src++;
        if (code & 0x80) {
            len = code - 0x7F;
            memset(dst, *src++, FFMIN(len, dst_end - dst));
        } else {
            len = code + 1;
            if (len > src_end-src) {
                av_log(((void*)0), AV_LOG_ERROR, "RLE overread\n");
                return AVERROR_INVALIDDATA;
            }
            memcpy(dst, src, FFMIN3(len, dst_end - dst, src_end - src));
            src += len;
        }
        dst += len;
    }

    if (dst_end - dst > dst_size - dst_size/10)
        return AVERROR_INVALIDDATA;

    return 0;
}
