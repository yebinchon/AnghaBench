
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
__attribute__((used)) static uint32_t codec_flags(enum AVCodecID codec_id) {
    switch (codec_id) {
    case 134:
    case 132:
        return 1;
    case 130:
    case 129:
    case 128:
        return 2;
    case 133:
    case 131:
        return 3;
    default:
        return 0;
    }
}
