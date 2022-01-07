
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
__attribute__((used)) static uint32_t samples_per_packet(enum AVCodecID codec_id, int channels, int block_align) {
    switch (codec_id) {
    case 131:
    case 136:
    case 137:
    case 134:
    case 135:
    case 132:
    case 133:
    case 141:
    case 142:
    case 139:
    case 140:
    case 143:
    case 138:
        return 1;
    case 149:
    case 148:
        return 6;
    case 157:
        return 64;
    case 153:
    case 152:
    case 150:
    case 130:
        return 160;
    case 151:
        return 320;
    case 147:
        return 384;
    case 144:
        return 960;
    case 146:
    case 145:
        return 1152;
    case 158:
        return 1536;
    case 129:
    case 128:
        return 2048 * channels;
    case 154:
        return 4096;
    case 156:
        return (block_align - 4 * channels) * 8 / (4 * channels) + 1;
    case 155:
        return (block_align - 7 * channels) * 2 / channels + 2;
    default:
        return 0;
    }
}
