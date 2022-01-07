
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct buffer_data {size_t size; int * ptr; int member_0; } ;
struct TYPE_11__ {TYPE_1__* pb; } ;
struct TYPE_10__ {int buffer; } ;
typedef TYPE_1__ AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_dump_format (TYPE_2__*,int ,char*,int ) ;
 char* av_err2str (int) ;
 int av_file_map (char*,int **,size_t*,int ,int *) ;
 int av_file_unmap (int *,size_t) ;
 int av_freep (int *) ;
 int * av_malloc (size_t) ;
 TYPE_2__* avformat_alloc_context () ;
 int avformat_close_input (TYPE_2__**) ;
 int avformat_find_stream_info (TYPE_2__*,int *) ;
 int avformat_open_input (TYPE_2__**,int *,int *,int *) ;
 TYPE_1__* avio_alloc_context (int *,size_t,int ,struct buffer_data*,int *,int *,int *) ;
 int avio_context_free (TYPE_1__**) ;
 int fprintf (int ,char*,...) ;
 int read_packet ;
 int stderr ;

int main(int argc, char *argv[])
{
    AVFormatContext *fmt_ctx = ((void*)0);
    AVIOContext *avio_ctx = ((void*)0);
    uint8_t *buffer = ((void*)0), *avio_ctx_buffer = ((void*)0);
    size_t buffer_size, avio_ctx_buffer_size = 4096;
    char *input_filename = ((void*)0);
    int ret = 0;
    struct buffer_data bd = { 0 };

    if (argc != 2) {
        fprintf(stderr, "usage: %s input_file\n"
                "API example program to show how to read from a custom buffer "
                "accessed through AVIOContext.\n", argv[0]);
        return 1;
    }
    input_filename = argv[1];


    ret = av_file_map(input_filename, &buffer, &buffer_size, 0, ((void*)0));
    if (ret < 0)
        goto end;


    bd.ptr = buffer;
    bd.size = buffer_size;

    if (!(fmt_ctx = avformat_alloc_context())) {
        ret = AVERROR(ENOMEM);
        goto end;
    }

    avio_ctx_buffer = av_malloc(avio_ctx_buffer_size);
    if (!avio_ctx_buffer) {
        ret = AVERROR(ENOMEM);
        goto end;
    }
    avio_ctx = avio_alloc_context(avio_ctx_buffer, avio_ctx_buffer_size,
                                  0, &bd, &read_packet, ((void*)0), ((void*)0));
    if (!avio_ctx) {
        ret = AVERROR(ENOMEM);
        goto end;
    }
    fmt_ctx->pb = avio_ctx;

    ret = avformat_open_input(&fmt_ctx, ((void*)0), ((void*)0), ((void*)0));
    if (ret < 0) {
        fprintf(stderr, "Could not open input\n");
        goto end;
    }

    ret = avformat_find_stream_info(fmt_ctx, ((void*)0));
    if (ret < 0) {
        fprintf(stderr, "Could not find stream information\n");
        goto end;
    }

    av_dump_format(fmt_ctx, 0, input_filename, 0);

end:
    avformat_close_input(&fmt_ctx);


    if (avio_ctx)
        av_freep(&avio_ctx->buffer);
    avio_context_free(&avio_ctx);

    av_file_unmap(buffer, buffer_size);

    if (ret < 0) {
        fprintf(stderr, "Error occurred: %s\n", av_err2str(ret));
        return 1;
    }

    return 0;
}
