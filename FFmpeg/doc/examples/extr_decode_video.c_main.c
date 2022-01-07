
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int id; } ;
struct TYPE_9__ {scalar_t__ size; int data; } ;
typedef int FILE ;
typedef TYPE_1__ AVPacket ;
typedef int AVFrame ;
typedef int AVCodecParserContext ;
typedef int AVCodecContext ;
typedef TYPE_2__ AVCodec ;


 int AV_CODEC_ID_MPEG1VIDEO ;
 int AV_INPUT_BUFFER_PADDING_SIZE ;
 int AV_NOPTS_VALUE ;
 int INBUF_SIZE ;
 int * av_frame_alloc () ;
 int av_frame_free (int **) ;
 TYPE_1__* av_packet_alloc () ;
 int av_packet_free (TYPE_1__**) ;
 int av_parser_close (int *) ;
 int * av_parser_init (int ) ;
 int av_parser_parse2 (int *,int *,int *,scalar_t__*,int *,size_t,int ,int ,int ) ;
 int * avcodec_alloc_context3 (TYPE_2__ const*) ;
 TYPE_2__* avcodec_find_decoder (int ) ;
 int avcodec_free_context (int **) ;
 scalar_t__ avcodec_open2 (int *,TYPE_2__ const*,int *) ;
 int decode (int *,int *,TYPE_1__*,char const*) ;
 int exit (int) ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,...) ;
 size_t fread (int *,int,int,int *) ;
 int memset (int *,int ,int) ;
 int stderr ;

int main(int argc, char **argv)
{
    const char *filename, *outfilename;
    const AVCodec *codec;
    AVCodecParserContext *parser;
    AVCodecContext *c= ((void*)0);
    FILE *f;
    AVFrame *frame;
    uint8_t inbuf[INBUF_SIZE + AV_INPUT_BUFFER_PADDING_SIZE];
    uint8_t *data;
    size_t data_size;
    int ret;
    AVPacket *pkt;

    if (argc <= 2) {
        fprintf(stderr, "Usage: %s <input file> <output file>\n"
                "And check your input file is encoded by mpeg1video please.\n", argv[0]);
        exit(0);
    }
    filename = argv[1];
    outfilename = argv[2];

    pkt = av_packet_alloc();
    if (!pkt)
        exit(1);


    memset(inbuf + INBUF_SIZE, 0, AV_INPUT_BUFFER_PADDING_SIZE);


    codec = avcodec_find_decoder(AV_CODEC_ID_MPEG1VIDEO);
    if (!codec) {
        fprintf(stderr, "Codec not found\n");
        exit(1);
    }

    parser = av_parser_init(codec->id);
    if (!parser) {
        fprintf(stderr, "parser not found\n");
        exit(1);
    }

    c = avcodec_alloc_context3(codec);
    if (!c) {
        fprintf(stderr, "Could not allocate video codec context\n");
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

    frame = av_frame_alloc();
    if (!frame) {
        fprintf(stderr, "Could not allocate video frame\n");
        exit(1);
    }

    while (!feof(f)) {

        data_size = fread(inbuf, 1, INBUF_SIZE, f);
        if (!data_size)
            break;


        data = inbuf;
        while (data_size > 0) {
            ret = av_parser_parse2(parser, c, &pkt->data, &pkt->size,
                                   data, data_size, AV_NOPTS_VALUE, AV_NOPTS_VALUE, 0);
            if (ret < 0) {
                fprintf(stderr, "Error while parsing\n");
                exit(1);
            }
            data += ret;
            data_size -= ret;

            if (pkt->size)
                decode(c, frame, pkt, outfilename);
        }
    }


    decode(c, frame, ((void*)0), outfilename);

    fclose(f);

    av_parser_close(parser);
    avcodec_free_context(&c);
    av_frame_free(&frame);
    av_packet_free(&pkt);

    return 0;
}
