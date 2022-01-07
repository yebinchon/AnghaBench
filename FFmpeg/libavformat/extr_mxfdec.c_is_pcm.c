
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;


 int AV_CODEC_ID_PCM_S16LE ;
 int AV_CODEC_ID_PCM_S24DAUD ;

__attribute__((used)) static int is_pcm(enum AVCodecID codec_id)
{

    return codec_id >= AV_CODEC_ID_PCM_S16LE && codec_id < AV_CODEC_ID_PCM_S24DAUD;
}
