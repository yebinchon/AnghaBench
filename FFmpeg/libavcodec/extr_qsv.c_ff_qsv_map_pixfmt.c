
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;


 int AVERROR (int ) ;





 int ENOSYS ;
 int MFX_FOURCC_NV12 ;
 int MFX_FOURCC_P010 ;

int ff_qsv_map_pixfmt(enum AVPixelFormat format, uint32_t *fourcc)
{
    switch (format) {
    case 130:
    case 128:
    case 132:
        *fourcc = MFX_FOURCC_NV12;
        return 132;
    case 129:
    case 131:
        *fourcc = MFX_FOURCC_P010;
        return 131;
    default:
        return AVERROR(ENOSYS);
    }
}
