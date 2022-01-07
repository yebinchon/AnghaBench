
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVFieldOrder { ____Placeholder_AVFieldOrder } AVFieldOrder ;


 int AV_FIELD_BB ;
 int AV_FIELD_PROGRESSIVE ;
 int AV_FIELD_TT ;
 int AV_FIELD_UNKNOWN ;




enum AVFieldOrder ff_qsv_map_picstruct(int mfx_pic_struct)
{
    enum AVFieldOrder field = AV_FIELD_UNKNOWN;
    switch (mfx_pic_struct & 0xF) {
    case 128:
        field = AV_FIELD_PROGRESSIVE;
        break;
    case 129:
        field = AV_FIELD_TT;
        break;
    case 130:
        field = AV_FIELD_BB;
        break;
    }

    return field;
}
