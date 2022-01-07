
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef enum IEC61937DataType { ____Placeholder_IEC61937DataType } IEC61937DataType ;
typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
typedef int AVFormatContext ;


 int AC3_FRAME_SIZE ;
 int AVERROR_PATCHWELCOME ;
 int AV_CODEC_ID_AAC ;
 int AV_CODEC_ID_AC3 ;
 int AV_CODEC_ID_DTS ;
 int AV_CODEC_ID_MP1 ;
 int AV_CODEC_ID_MP2 ;
 int AV_CODEC_ID_MP3 ;
 int AV_LOG_ERROR ;
 int av_adts_header_parse (char const*,int*,int *) ;
 int av_log (int *,int ,char*) ;
 int avpriv_request_sample (int *,char*,int) ;
 int** spdif_mpeg_pkt_offset ;

__attribute__((used)) static int spdif_get_offset_and_codec(AVFormatContext *s,
                                      enum IEC61937DataType data_type,
                                      const char *buf, int *offset,
                                      enum AVCodecID *codec)
{
    uint32_t samples;
    uint8_t frames;
    int ret;

    switch (data_type & 0xff) {
    case 138:
        *offset = AC3_FRAME_SIZE << 2;
        *codec = AV_CODEC_ID_AC3;
        break;
    case 134:
        *offset = spdif_mpeg_pkt_offset[1][0];
        *codec = AV_CODEC_ID_MP1;
        break;
    case 133:
        *offset = spdif_mpeg_pkt_offset[1][0];
        *codec = AV_CODEC_ID_MP3;
        break;
    case 131:
        *offset = 4608;
        *codec = AV_CODEC_ID_MP3;
        break;
    case 132:
        ret = av_adts_header_parse(buf, &samples, &frames);
        if (ret < 0) {
            if (s)
                av_log(s, AV_LOG_ERROR, "Invalid AAC packet in IEC 61937\n");
            return ret;
        }
        *offset = samples << 2;
        *codec = AV_CODEC_ID_AAC;
        break;
    case 130:
        *offset = spdif_mpeg_pkt_offset[0][0];
        *codec = AV_CODEC_ID_MP1;
        break;
    case 129:
        *offset = spdif_mpeg_pkt_offset[0][1];
        *codec = AV_CODEC_ID_MP2;
        break;
    case 128:
        *offset = spdif_mpeg_pkt_offset[0][2];
        *codec = AV_CODEC_ID_MP3;
        break;
    case 137:
        *offset = 2048;
        *codec = AV_CODEC_ID_DTS;
        break;
    case 136:
        *offset = 4096;
        *codec = AV_CODEC_ID_DTS;
        break;
    case 135:
        *offset = 8192;
        *codec = AV_CODEC_ID_DTS;
        break;
    default:
        if (s) {
            avpriv_request_sample(s, "Data type 0x%04x in IEC 61937",
                                  data_type);
        }
        return AVERROR_PATCHWELCOME;
    }
    return 0;
}
