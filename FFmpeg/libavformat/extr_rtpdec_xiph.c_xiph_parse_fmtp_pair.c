
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {void* height; void* width; int format; } ;
struct TYPE_5__ {TYPE_2__* codecpar; } ;
typedef int PayloadContext ;
typedef TYPE_1__ AVStream ;
typedef int AVFormatContext ;
typedef TYPE_2__ AVCodecParameters ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int AV_PIX_FMT_YUV420P ;
 int AV_PIX_FMT_YUV422P ;
 int AV_PIX_FMT_YUV444P ;
 int ENOMEM ;
 size_t INT_MAX ;
 void* atoi (char const*) ;
 int av_base64_decode (int *,char const*,size_t) ;
 int av_free (int *) ;
 int av_log (int *,int ,char*,...) ;
 int * av_malloc (size_t) ;
 int parse_packed_headers (int *,int *,int *,TYPE_2__*,int *) ;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static int xiph_parse_fmtp_pair(AVFormatContext *s,
                                AVStream* stream,
                                PayloadContext *xiph_data,
                                const char *attr, const char *value)
{
    AVCodecParameters *par = stream->codecpar;
    int result = 0;

    if (!strcmp(attr, "sampling")) {
        if (!strcmp(value, "YCbCr-4:2:0")) {
            par->format = AV_PIX_FMT_YUV420P;
        } else if (!strcmp(value, "YCbCr-4:4:2")) {
            par->format = AV_PIX_FMT_YUV422P;
        } else if (!strcmp(value, "YCbCr-4:4:4")) {
            par->format = AV_PIX_FMT_YUV444P;
        } else {
            av_log(s, AV_LOG_ERROR,
                   "Unsupported pixel format %s\n", attr);
            return AVERROR_INVALIDDATA;
        }
    } else if (!strcmp(attr, "width")) {


        par->width = atoi(value);
        return 0;
    } else if (!strcmp(attr, "height")) {


        par->height = atoi(value);
        return 0;
    } else if (!strcmp(attr, "delivery-method")) {

        return AVERROR_PATCHWELCOME;
    } else if (!strcmp(attr, "configuration-uri")) {



        return AVERROR_PATCHWELCOME;
    } else if (!strcmp(attr, "configuration")) {


        uint8_t *decoded_packet = ((void*)0);
        int packet_size;
        size_t decoded_alloc = strlen(value) / 4 * 3 + 4;

        if (decoded_alloc <= INT_MAX) {
            decoded_packet = av_malloc(decoded_alloc);
            if (decoded_packet) {
                packet_size =
                    av_base64_decode(decoded_packet, value, decoded_alloc);

                result = parse_packed_headers
                    (s, decoded_packet, decoded_packet + packet_size, par,
                    xiph_data);
            } else {
                av_log(s, AV_LOG_ERROR,
                       "Out of memory while decoding SDP configuration.\n");
                result = AVERROR(ENOMEM);
            }
        } else {
            av_log(s, AV_LOG_ERROR, "Packet too large\n");
            result = AVERROR_INVALIDDATA;
        }
        av_free(decoded_packet);
    }
    return result;
}
