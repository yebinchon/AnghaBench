
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPictureType { ____Placeholder_AVPictureType } AVPictureType ;


 int AV_PICTURE_TYPE_B ;
 int AV_PICTURE_TYPE_I ;
 int AV_PICTURE_TYPE_NONE ;
 int AV_PICTURE_TYPE_P ;
 int AV_PICTURE_TYPE_SI ;
 int AV_PICTURE_TYPE_SP ;



 int MFX_FRAMETYPE_S ;

 int av_assert0 (int ) ;

enum AVPictureType ff_qsv_map_pictype(int mfx_pic_type)
{
    enum AVPictureType type;
    switch (mfx_pic_type & 0x7) {
    case 130:
        if (mfx_pic_type & MFX_FRAMETYPE_S)
            type = AV_PICTURE_TYPE_SI;
        else
            type = AV_PICTURE_TYPE_I;
        break;
    case 131:
        type = AV_PICTURE_TYPE_B;
        break;
    case 129:
        if (mfx_pic_type & MFX_FRAMETYPE_S)
            type = AV_PICTURE_TYPE_SP;
        else
            type = AV_PICTURE_TYPE_P;
        break;
    case 128:
        type = AV_PICTURE_TYPE_NONE;
        break;
    default:
        av_assert0(0);
    }

    return type;
}
