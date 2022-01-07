
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;



 int FF_LEVEL_UNKNOWN ;
 int MFX_LEVEL_UNKNOWN ;

int ff_qsv_level_to_mfx(enum AVCodecID codec_id, int level)
{
    if (level == FF_LEVEL_UNKNOWN)
        return MFX_LEVEL_UNKNOWN;

    switch (codec_id) {
    case 128:
        return level / 3;
    default:
        return level;
    }
}
