
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef int NV_ENC_BUFFER_FORMAT ;
 int NV_ENC_BUFFER_FORMAT_ABGR ;
 int NV_ENC_BUFFER_FORMAT_ARGB ;
 int NV_ENC_BUFFER_FORMAT_NV12_PL ;
 int NV_ENC_BUFFER_FORMAT_UNDEFINED ;
 int NV_ENC_BUFFER_FORMAT_YUV420_10BIT ;
 int NV_ENC_BUFFER_FORMAT_YUV444_10BIT ;
 int NV_ENC_BUFFER_FORMAT_YUV444_PL ;
 int NV_ENC_BUFFER_FORMAT_YV12_PL ;

__attribute__((used)) static NV_ENC_BUFFER_FORMAT nvenc_map_buffer_format(enum AVPixelFormat pix_fmt)
{
    switch (pix_fmt) {
    case 130:
        return NV_ENC_BUFFER_FORMAT_YV12_PL;
    case 133:
        return NV_ENC_BUFFER_FORMAT_NV12_PL;
    case 132:
    case 131:
        return NV_ENC_BUFFER_FORMAT_YUV420_10BIT;
    case 129:
        return NV_ENC_BUFFER_FORMAT_YUV444_PL;
    case 128:
        return NV_ENC_BUFFER_FORMAT_YUV444_10BIT;
    case 134:
        return NV_ENC_BUFFER_FORMAT_ARGB;
    case 135:
        return NV_ENC_BUFFER_FORMAT_ABGR;
    default:
        return NV_ENC_BUFFER_FORMAT_UNDEFINED;
    }
}
