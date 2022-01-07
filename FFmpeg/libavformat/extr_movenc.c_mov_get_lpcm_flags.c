
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
__attribute__((used)) static int mov_get_lpcm_flags(enum AVCodecID codec_id)
{
    switch (codec_id) {
    case 139:
    case 137:
        return 11;
    case 138:
    case 136:
        return 9;
    case 128:
        return 10;
    case 135:
    case 133:
    case 131:
        return 14;
    case 129:
    case 134:
    case 132:
    case 130:
        return 12;
    default:
        return 0;
    }
}
