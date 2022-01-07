
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVColorSpace { ____Placeholder_AVColorSpace } AVColorSpace ;
typedef int MMAL_FOURCC_T ;


 int AVCOL_SPC_BT470BG ;
 int AVCOL_SPC_BT709 ;
 int AVCOL_SPC_FCC ;
 int AVCOL_SPC_SMPTE240M ;
 int AVCOL_SPC_UNSPECIFIED ;







__attribute__((used)) static enum AVColorSpace ffmmal_csp_to_av_csp(MMAL_FOURCC_T fourcc)
{
    switch (fourcc) {
    case 133:
    case 132:
    case 130: return AVCOL_SPC_BT470BG;
    case 129: return AVCOL_SPC_BT709;
    case 131: return AVCOL_SPC_FCC;
    case 128: return AVCOL_SPC_SMPTE240M;
    default: return AVCOL_SPC_UNSPECIFIED;
    }
}
