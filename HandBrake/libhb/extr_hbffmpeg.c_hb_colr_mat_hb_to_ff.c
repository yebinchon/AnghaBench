
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVCOL_SPC_BT2020_CL ;
 int AVCOL_SPC_BT2020_NCL ;
 int AVCOL_SPC_BT470BG ;
 int AVCOL_SPC_BT709 ;
 int AVCOL_SPC_CHROMA_DERIVED_CL ;
 int AVCOL_SPC_CHROMA_DERIVED_NCL ;
 int AVCOL_SPC_FCC ;
 int AVCOL_SPC_ICTCP ;
 int AVCOL_SPC_RGB ;
 int AVCOL_SPC_SMPTE170M ;
 int AVCOL_SPC_SMPTE2085 ;
 int AVCOL_SPC_SMPTE240M ;
 int AVCOL_SPC_UNSPECIFIED ;
 int AVCOL_SPC_YCGCO ;
int hb_colr_mat_hb_to_ff(int colr_mat)
{
    switch (colr_mat)
    {
        case 133:
            return AVCOL_SPC_RGB;
        case 138:
            return AVCOL_SPC_BT709;
        case 135:
            return AVCOL_SPC_FCC;
        case 139:
            return AVCOL_SPC_BT470BG;
        case 132:
            return AVCOL_SPC_SMPTE170M;
        case 130:
            return AVCOL_SPC_SMPTE240M;
        case 128:
            return AVCOL_SPC_YCGCO;
        case 140:
            return AVCOL_SPC_BT2020_NCL;
        case 141:
            return AVCOL_SPC_BT2020_CL;
        case 131:
            return AVCOL_SPC_SMPTE2085;
        case 136:
            return AVCOL_SPC_CHROMA_DERIVED_NCL;
        case 137:
            return AVCOL_SPC_CHROMA_DERIVED_CL;
        case 134:
            return AVCOL_SPC_ICTCP;
        default:
        case 129:
            return AVCOL_SPC_UNSPECIFIED;
    }
}
