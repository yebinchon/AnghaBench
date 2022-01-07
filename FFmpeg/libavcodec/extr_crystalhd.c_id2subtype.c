
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
typedef int CHDContext ;
typedef int BC_MEDIA_SUBTYPE ;
 int BC_MSUBTYPE_DIVX ;
 int BC_MSUBTYPE_DIVX311 ;
 int BC_MSUBTYPE_H264 ;
 int BC_MSUBTYPE_INVALID ;
 int BC_MSUBTYPE_MPEG2VIDEO ;
 int BC_MSUBTYPE_VC1 ;
 int BC_MSUBTYPE_WMV3 ;

__attribute__((used)) static inline BC_MEDIA_SUBTYPE id2subtype(CHDContext *priv, enum AVCodecID id)
{
    switch (id) {
    case 131:
        return BC_MSUBTYPE_DIVX;
    case 130:
        return BC_MSUBTYPE_DIVX311;
    case 132:
        return BC_MSUBTYPE_MPEG2VIDEO;
    case 129:
        return BC_MSUBTYPE_VC1;
    case 128:
        return BC_MSUBTYPE_WMV3;
    case 133:
        return BC_MSUBTYPE_H264;
    default:
        return BC_MSUBTYPE_INVALID;
    }
}
