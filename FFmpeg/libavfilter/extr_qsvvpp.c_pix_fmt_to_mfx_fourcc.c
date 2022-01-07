
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MFX_FOURCC_NV12 ;
 int MFX_FOURCC_RGB4 ;
 int MFX_FOURCC_YUY2 ;
 int MFX_FOURCC_YV12 ;

__attribute__((used)) static int pix_fmt_to_mfx_fourcc(int format)
{
    switch (format) {
    case 129:
        return MFX_FOURCC_YV12;
    case 130:
        return MFX_FOURCC_NV12;
    case 128:
        return MFX_FOURCC_YUY2;
    case 131:
        return MFX_FOURCC_RGB4;
    }

    return MFX_FOURCC_NV12;
}
