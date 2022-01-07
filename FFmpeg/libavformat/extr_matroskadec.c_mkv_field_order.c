
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {scalar_t__ muxingapp; } ;
typedef TYPE_1__ MatroskaDemuxContext ;


 int AV_FIELD_BB ;
 int AV_FIELD_BT ;
 int AV_FIELD_PROGRESSIVE ;
 int AV_FIELD_TB ;
 int AV_FIELD_TT ;
 int AV_FIELD_UNKNOWN ;






 int sscanf (scalar_t__,char*,int*,int*,int*) ;

__attribute__((used)) static int mkv_field_order(MatroskaDemuxContext *matroska, int64_t field_order)
{
    int major, minor, micro, bttb = 0;



    if (matroska->muxingapp && sscanf(matroska->muxingapp, "Lavf%d.%d.%d", &major, &minor, &micro) == 3)
        bttb = (major == 57 && minor >= 36 && minor <= 51 && micro >= 100);

    switch (field_order) {
    case 131:
        return AV_FIELD_PROGRESSIVE;
    case 128:
        return AV_FIELD_UNKNOWN;
    case 129:
        return AV_FIELD_TT;
    case 133:
        return AV_FIELD_BB;
    case 132:
        return bttb ? AV_FIELD_TB : AV_FIELD_BT;
    case 130:
        return bttb ? AV_FIELD_BT : AV_FIELD_TB;
    default:
        return AV_FIELD_UNKNOWN;
    }
}
