
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;


 int AV_PIX_FMT_YUV420P ;

__attribute__((used)) static int compute_cmask(int plane_no, int interlaced, enum AVPixelFormat pix_fmt)
{
    const int is_luma = (pix_fmt == AV_PIX_FMT_YUV420P) && !plane_no;

    if (interlaced)
        return ~(1 + 2 * is_luma);

    return ~is_luma;
}
