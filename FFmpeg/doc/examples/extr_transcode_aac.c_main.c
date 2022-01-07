
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_24__ {int frame_size; } ;
struct TYPE_23__ {int pb; } ;
typedef int SwrContext ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ AVCodecContext ;
typedef int AVAudioFifo ;


 int AVERROR_EXIT ;
 int av_audio_fifo_free (int *) ;
 int const av_audio_fifo_size (int *) ;
 int avcodec_free_context (TYPE_2__**) ;
 int avformat_close_input (TYPE_1__**) ;
 int avformat_free_context (TYPE_1__*) ;
 int avio_closep (int *) ;
 scalar_t__ encode_audio_frame (int *,TYPE_1__*,TYPE_2__*,int*) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ init_fifo (int **,TYPE_2__*) ;
 scalar_t__ init_resampler (TYPE_2__*,TYPE_2__*,int **) ;
 scalar_t__ load_encode_and_write (int *,TYPE_1__*,TYPE_2__*) ;
 scalar_t__ open_input_file (char*,TYPE_1__**,TYPE_2__**) ;
 scalar_t__ open_output_file (char*,TYPE_2__*,TYPE_1__**,TYPE_2__**) ;
 scalar_t__ read_decode_convert_and_store (int *,TYPE_1__*,TYPE_2__*,TYPE_2__*,int *,int*) ;
 int stderr ;
 int swr_free (int **) ;
 scalar_t__ write_output_file_header (TYPE_1__*) ;
 scalar_t__ write_output_file_trailer (TYPE_1__*) ;

int main(int argc, char **argv)
{
    AVFormatContext *input_format_context = ((void*)0), *output_format_context = ((void*)0);
    AVCodecContext *input_codec_context = ((void*)0), *output_codec_context = ((void*)0);
    SwrContext *resample_context = ((void*)0);
    AVAudioFifo *fifo = ((void*)0);
    int ret = AVERROR_EXIT;

    if (argc != 3) {
        fprintf(stderr, "Usage: %s <input file> <output file>\n", argv[0]);
        exit(1);
    }


    if (open_input_file(argv[1], &input_format_context,
                        &input_codec_context))
        goto cleanup;

    if (open_output_file(argv[2], input_codec_context,
                         &output_format_context, &output_codec_context))
        goto cleanup;

    if (init_resampler(input_codec_context, output_codec_context,
                       &resample_context))
        goto cleanup;

    if (init_fifo(&fifo, output_codec_context))
        goto cleanup;

    if (write_output_file_header(output_format_context))
        goto cleanup;



    while (1) {

        const int output_frame_size = output_codec_context->frame_size;
        int finished = 0;






        while (av_audio_fifo_size(fifo) < output_frame_size) {


            if (read_decode_convert_and_store(fifo, input_format_context,
                                              input_codec_context,
                                              output_codec_context,
                                              resample_context, &finished))
                goto cleanup;



            if (finished)
                break;
        }




        while (av_audio_fifo_size(fifo) >= output_frame_size ||
               (finished && av_audio_fifo_size(fifo) > 0))


            if (load_encode_and_write(fifo, output_format_context,
                                      output_codec_context))
                goto cleanup;



        if (finished) {
            int data_written;

            do {
                data_written = 0;
                if (encode_audio_frame(((void*)0), output_format_context,
                                       output_codec_context, &data_written))
                    goto cleanup;
            } while (data_written);
            break;
        }
    }


    if (write_output_file_trailer(output_format_context))
        goto cleanup;
    ret = 0;

cleanup:
    if (fifo)
        av_audio_fifo_free(fifo);
    swr_free(&resample_context);
    if (output_codec_context)
        avcodec_free_context(&output_codec_context);
    if (output_format_context) {
        avio_closep(&output_format_context->pb);
        avformat_free_context(output_format_context);
    }
    if (input_codec_context)
        avcodec_free_context(&input_codec_context);
    if (input_format_context)
        avformat_close_input(&input_format_context);

    return ret;
}
