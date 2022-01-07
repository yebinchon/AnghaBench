
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int buf ;
struct TYPE_23__ {int get_format; TYPE_2__* opaque; scalar_t__ extradata_size; int extradata; scalar_t__ codec_id; } ;
struct TYPE_22__ {int nb_streams; TYPE_3__** streams; } ;
struct TYPE_21__ {scalar_t__ stream_index; scalar_t__ size; int * data; int member_0; } ;
struct TYPE_20__ {scalar_t__ index; TYPE_1__* codecpar; int discard; } ;
struct TYPE_19__ {int hw_device_ref; int * member_0; } ;
struct TYPE_18__ {scalar_t__ codec_id; scalar_t__ extradata_size; int extradata; } ;
typedef TYPE_2__ DecodeContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVPacket ;
typedef int AVIOContext ;
typedef int AVFrame ;
typedef TYPE_5__ AVFormatContext ;
typedef TYPE_6__ AVCodecContext ;
typedef int AVCodec ;


 int AVDISCARD_ALL ;
 int AVERROR (int ) ;
 int AVIO_FLAG_WRITE ;
 scalar_t__ AV_CODEC_ID_H264 ;
 int AV_HWDEVICE_TYPE_QSV ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int ENOMEM ;
 int av_buffer_unref (int *) ;
 int * av_frame_alloc () ;
 int av_frame_free (int **) ;
 int av_hwdevice_ctx_create (int *,int ,char*,int *,int ) ;
 int av_mallocz (scalar_t__) ;
 int av_packet_unref (TYPE_4__*) ;
 int av_read_frame (TYPE_5__*,TYPE_4__*) ;
 int av_strerror (int,char*,int) ;
 TYPE_6__* avcodec_alloc_context3 (int const*) ;
 int * avcodec_find_decoder_by_name (char*) ;
 int avcodec_free_context (TYPE_6__**) ;
 int avcodec_open2 (TYPE_6__*,int *,int *) ;
 int avformat_close_input (TYPE_5__**) ;
 int avformat_open_input (TYPE_5__**,char*,int *,int *) ;
 int avio_close (int *) ;
 int avio_open (int **,char*,int ) ;
 int decode_packet (TYPE_2__*,TYPE_6__*,int *,int *,TYPE_4__*,int *) ;
 int fprintf (int ,char*,...) ;
 int get_format ;
 int memcpy (int ,int ,scalar_t__) ;
 int stderr ;

int main(int argc, char **argv)
{
    AVFormatContext *input_ctx = ((void*)0);
    AVStream *video_st = ((void*)0);
    AVCodecContext *decoder_ctx = ((void*)0);
    const AVCodec *decoder;

    AVPacket pkt = { 0 };
    AVFrame *frame = ((void*)0), *sw_frame = ((void*)0);

    DecodeContext decode = { ((void*)0) };

    AVIOContext *output_ctx = ((void*)0);

    int ret, i;

    if (argc < 3) {
        fprintf(stderr, "Usage: %s <input file> <output file>\n", argv[0]);
        return 1;
    }


    ret = avformat_open_input(&input_ctx, argv[1], ((void*)0), ((void*)0));
    if (ret < 0) {
        fprintf(stderr, "Cannot open input file '%s': ", argv[1]);
        goto finish;
    }


    for (i = 0; i < input_ctx->nb_streams; i++) {
        AVStream *st = input_ctx->streams[i];

        if (st->codecpar->codec_id == AV_CODEC_ID_H264 && !video_st)
            video_st = st;
        else
            st->discard = AVDISCARD_ALL;
    }
    if (!video_st) {
        fprintf(stderr, "No H.264 video stream in the input file\n");
        goto finish;
    }


    ret = av_hwdevice_ctx_create(&decode.hw_device_ref, AV_HWDEVICE_TYPE_QSV,
                                 "auto", ((void*)0), 0);
    if (ret < 0) {
        fprintf(stderr, "Cannot open the hardware device\n");
        goto finish;
    }


    decoder = avcodec_find_decoder_by_name("h264_qsv");
    if (!decoder) {
        fprintf(stderr, "The QSV decoder is not present in libavcodec\n");
        goto finish;
    }

    decoder_ctx = avcodec_alloc_context3(decoder);
    if (!decoder_ctx) {
        ret = AVERROR(ENOMEM);
        goto finish;
    }
    decoder_ctx->codec_id = AV_CODEC_ID_H264;
    if (video_st->codecpar->extradata_size) {
        decoder_ctx->extradata = av_mallocz(video_st->codecpar->extradata_size +
                                            AV_INPUT_BUFFER_PADDING_SIZE);
        if (!decoder_ctx->extradata) {
            ret = AVERROR(ENOMEM);
            goto finish;
        }
        memcpy(decoder_ctx->extradata, video_st->codecpar->extradata,
               video_st->codecpar->extradata_size);
        decoder_ctx->extradata_size = video_st->codecpar->extradata_size;
    }

    decoder_ctx->opaque = &decode;
    decoder_ctx->get_format = get_format;

    ret = avcodec_open2(decoder_ctx, ((void*)0), ((void*)0));
    if (ret < 0) {
        fprintf(stderr, "Error opening the decoder: ");
        goto finish;
    }


    ret = avio_open(&output_ctx, argv[2], AVIO_FLAG_WRITE);
    if (ret < 0) {
        fprintf(stderr, "Error opening the output context: ");
        goto finish;
    }

    frame = av_frame_alloc();
    sw_frame = av_frame_alloc();
    if (!frame || !sw_frame) {
        ret = AVERROR(ENOMEM);
        goto finish;
    }


    while (ret >= 0) {
        ret = av_read_frame(input_ctx, &pkt);
        if (ret < 0)
            break;

        if (pkt.stream_index == video_st->index)
            ret = decode_packet(&decode, decoder_ctx, frame, sw_frame, &pkt, output_ctx);

        av_packet_unref(&pkt);
    }


    pkt.data = ((void*)0);
    pkt.size = 0;
    ret = decode_packet(&decode, decoder_ctx, frame, sw_frame, &pkt, output_ctx);

finish:
    if (ret < 0) {
        char buf[1024];
        av_strerror(ret, buf, sizeof(buf));
        fprintf(stderr, "%s\n", buf);
    }

    avformat_close_input(&input_ctx);

    av_frame_free(&frame);
    av_frame_free(&sw_frame);

    avcodec_free_context(&decoder_ctx);

    av_buffer_unref(&decode.hw_device_ref);

    avio_close(output_ctx);

    return ret;
}
