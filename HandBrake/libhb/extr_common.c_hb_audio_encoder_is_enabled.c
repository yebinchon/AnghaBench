
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_CODEC_ID_AC3 ;
 int AV_CODEC_ID_EAC3 ;
 int AV_CODEC_ID_FLAC ;
 int AV_CODEC_ID_OPUS ;
 int HB_ACODEC_PASS_FLAG ;

 int * avcodec_find_encoder (int ) ;
 int * avcodec_find_encoder_by_name (char*) ;

__attribute__((used)) static int hb_audio_encoder_is_enabled(int encoder)
{
    if (encoder & HB_ACODEC_PASS_FLAG)
    {

        return 1;
    }
    switch (encoder)
    {
        case 137:
        case 136:
            return avcodec_find_encoder_by_name("libfdk_aac") != ((void*)0);

        case 140:
            return avcodec_find_encoder(AV_CODEC_ID_AC3) != ((void*)0);

        case 134:
            return avcodec_find_encoder(AV_CODEC_ID_EAC3) != ((void*)0);

        case 133:
        case 132:
            return avcodec_find_encoder(AV_CODEC_ID_FLAC) != ((void*)0);

        case 129:
            return avcodec_find_encoder(AV_CODEC_ID_OPUS) != ((void*)0);


        case 131:
        case 128:
        case 130:
            return 1;

        default:
            return 0;
    }
}
