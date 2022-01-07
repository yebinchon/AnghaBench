
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;






__attribute__((used)) static int get_audio_codec_id(enum AVCodecID codec_id)
{

    switch (codec_id) {
    case 128:
    case 129:
        return 0;
    case 130:
        return 2;
    default:
        return -1;
    }
}
