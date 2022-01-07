
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;


 int AV_PIX_FMT_NONE ;
 int AV_PIX_FMT_NV12 ;
 int AV_PIX_FMT_P010 ;
 int AV_PIX_FMT_PAL8 ;




enum AVPixelFormat ff_qsv_map_fourcc(uint32_t fourcc)
{
    switch (fourcc) {
    case 130: return AV_PIX_FMT_NV12;
    case 129: return AV_PIX_FMT_P010;
    case 128: return AV_PIX_FMT_PAL8;
    }
    return AV_PIX_FMT_NONE;
}
