
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint8_t ;
typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_18__ {int id; } ;
struct TYPE_17__ {int sample_fmt; int channels; int sample_rate; } ;
struct TYPE_16__ {scalar_t__ size; int * data; } ;
typedef int FILE ;
typedef TYPE_1__ AVPacket ;
typedef int AVFrame ;
typedef int AVCodecParserContext ;
typedef TYPE_2__ AVCodecContext ;
typedef TYPE_3__ AVCodec ;


 int AUDIO_INBUF_SIZE ;
 size_t AUDIO_REFILL_THRESH ;
 int AV_CODEC_ID_MP2 ;
 int AV_INPUT_BUFFER_PADDING_SIZE ;
 int AV_NOPTS_VALUE ;
 int * av_frame_alloc () ;
 int av_frame_free (int **) ;
 int av_free (TYPE_2__*) ;
 int av_get_packed_sample_fmt (int) ;
 char* av_get_sample_fmt_name (int) ;
 TYPE_1__* av_packet_alloc () ;
 int av_packet_free (TYPE_1__**) ;
 int av_parser_close (int *) ;
 int * av_parser_init (int ) ;
 int av_parser_parse2 (int *,TYPE_2__*,int **,scalar_t__*,int *,size_t,int ,int ,int ) ;
 scalar_t__ av_sample_fmt_is_planar (int) ;
 TYPE_2__* avcodec_alloc_context3 (TYPE_3__ const*) ;
 TYPE_3__* avcodec_find_decoder (int ) ;
 int avcodec_free_context (TYPE_2__**) ;
 scalar_t__ avcodec_open2 (TYPE_2__*,TYPE_3__ const*,int *) ;
 int decode (TYPE_2__*,TYPE_1__*,int *,int *) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,...) ;
 void* fread (int *,int,int,int *) ;
 int get_format_from_sample_fmt (char const**,int) ;
 int memmove (int *,int *,size_t) ;
 int printf (char*,char const*,...) ;
 int stderr ;

int main(int argc, char **argv)
{
    const char *outfilename, *filename;
    const AVCodec *codec;
    AVCodecContext *c= ((void*)0);
    AVCodecParserContext *parser = ((void*)0);
    int len, ret;
    FILE *f, *outfile;
    uint8_t inbuf[AUDIO_INBUF_SIZE + AV_INPUT_BUFFER_PADDING_SIZE];
    uint8_t *data;
    size_t data_size;
    AVPacket *pkt;
    AVFrame *decoded_frame = ((void*)0);
    enum AVSampleFormat sfmt;
    int n_channels = 0;
    const char *fmt;

    if (argc <= 2) {
        fprintf(stderr, "Usage: %s <input file> <output file>\n", argv[0]);
        exit(0);
    }
    filename = argv[1];
    outfilename = argv[2];

    pkt = av_packet_alloc();


    codec = avcodec_find_decoder(AV_CODEC_ID_MP2);
    if (!codec) {
        fprintf(stderr, "Codec not found\n");
        exit(1);
    }

    parser = av_parser_init(codec->id);
    if (!parser) {
        fprintf(stderr, "Parser not found\n");
        exit(1);
    }

    c = avcodec_alloc_context3(codec);
    if (!c) {
        fprintf(stderr, "Could not allocate audio codec context\n");
        exit(1);
    }


    if (avcodec_open2(c, codec, ((void*)0)) < 0) {
        fprintf(stderr, "Could not open codec\n");
        exit(1);
    }

    f = fopen(filename, "rb");
    if (!f) {
        fprintf(stderr, "Could not open %s\n", filename);
        exit(1);
    }
    outfile = fopen(outfilename, "wb");
    if (!outfile) {
        av_free(c);
        exit(1);
    }


    data = inbuf;
    data_size = fread(inbuf, 1, AUDIO_INBUF_SIZE, f);

    while (data_size > 0) {
        if (!decoded_frame) {
            if (!(decoded_frame = av_frame_alloc())) {
                fprintf(stderr, "Could not allocate audio frame\n");
                exit(1);
            }
        }

        ret = av_parser_parse2(parser, c, &pkt->data, &pkt->size,
                               data, data_size,
                               AV_NOPTS_VALUE, AV_NOPTS_VALUE, 0);
        if (ret < 0) {
            fprintf(stderr, "Error while parsing\n");
            exit(1);
        }
        data += ret;
        data_size -= ret;

        if (pkt->size)
            decode(c, pkt, decoded_frame, outfile);

        if (data_size < AUDIO_REFILL_THRESH) {
            memmove(inbuf, data, data_size);
            data = inbuf;
            len = fread(data + data_size, 1,
                        AUDIO_INBUF_SIZE - data_size, f);
            if (len > 0)
                data_size += len;
        }
    }


    pkt->data = ((void*)0);
    pkt->size = 0;
    decode(c, pkt, decoded_frame, outfile);


    sfmt = c->sample_fmt;

    if (av_sample_fmt_is_planar(sfmt)) {
        const char *packed = av_get_sample_fmt_name(sfmt);
        printf("Warning: the sample format the decoder produced is planar "
               "(%s). This example will output the first channel only.\n",
               packed ? packed : "?");
        sfmt = av_get_packed_sample_fmt(sfmt);
    }

    n_channels = c->channels;
    if ((ret = get_format_from_sample_fmt(&fmt, sfmt)) < 0)
        goto end;

    printf("Play the output audio file with the command:\n"
           "ffplay -f %s -ac %d -ar %d %s\n",
           fmt, n_channels, c->sample_rate,
           outfilename);
end:
    fclose(outfile);
    fclose(f);

    avcodec_free_context(&c);
    av_parser_close(parser);
    av_frame_free(&decoded_frame);
    av_packet_free(&pkt);

    return 0;
}
