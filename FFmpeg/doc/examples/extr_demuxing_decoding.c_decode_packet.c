
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {int time_base; } ;
struct TYPE_11__ {scalar_t__ width; scalar_t__ height; scalar_t__ format; int coded_picture_number; size_t nb_samples; int * extended_data; int pts; int linesize; scalar_t__ data; } ;
struct TYPE_10__ {int size; scalar_t__ stream_index; } ;


 int FFMIN (int,int) ;
 TYPE_5__* audio_dec_ctx ;
 int audio_dst_file ;
 int audio_frame_count ;
 scalar_t__ audio_stream_idx ;
 char* av_err2str (int) ;
 int av_frame_unref (TYPE_2__*) ;
 size_t av_get_bytes_per_sample (scalar_t__) ;
 char* av_get_pix_fmt_name (scalar_t__) ;
 int av_image_copy (int *,int ,int const**,int ,scalar_t__,scalar_t__,scalar_t__) ;
 char* av_ts2timestr (int ,int *) ;
 int avcodec_decode_audio4 (TYPE_5__*,TYPE_2__*,int*,TYPE_1__*) ;
 int avcodec_decode_video2 (int ,TYPE_2__*,int*,TYPE_1__*) ;
 int fprintf (int ,char*,char*,...) ;
 TYPE_2__* frame ;
 int fwrite (int ,int,size_t,int ) ;
 scalar_t__ height ;
 scalar_t__ pix_fmt ;
 TYPE_1__ pkt ;
 int printf (char*,char*,int ,size_t,...) ;
 scalar_t__ refcount ;
 int stderr ;
 int video_dec_ctx ;
 size_t video_dst_bufsize ;
 int * video_dst_data ;
 int video_dst_file ;
 int video_dst_linesize ;
 int video_frame_count ;
 scalar_t__ video_stream_idx ;
 scalar_t__ width ;

__attribute__((used)) static int decode_packet(int *got_frame, int cached)
{
    int ret = 0;
    int decoded = pkt.size;

    *got_frame = 0;

    if (pkt.stream_index == video_stream_idx) {

        ret = avcodec_decode_video2(video_dec_ctx, frame, got_frame, &pkt);
        if (ret < 0) {
            fprintf(stderr, "Error decoding video frame (%s)\n", av_err2str(ret));
            return ret;
        }

        if (*got_frame) {

            if (frame->width != width || frame->height != height ||
                frame->format != pix_fmt) {


                fprintf(stderr, "Error: Width, height and pixel format have to be "
                        "constant in a rawvideo file, but the width, height or "
                        "pixel format of the input video changed:\n"
                        "old: width = %d, height = %d, format = %s\n"
                        "new: width = %d, height = %d, format = %s\n",
                        width, height, av_get_pix_fmt_name(pix_fmt),
                        frame->width, frame->height,
                        av_get_pix_fmt_name(frame->format));
                return -1;
            }

            printf("video_frame%s n:%d coded_n:%d\n",
                   cached ? "(cached)" : "",
                   video_frame_count++, frame->coded_picture_number);



            av_image_copy(video_dst_data, video_dst_linesize,
                          (const uint8_t **)(frame->data), frame->linesize,
                          pix_fmt, width, height);


            fwrite(video_dst_data[0], 1, video_dst_bufsize, video_dst_file);
        }
    } else if (pkt.stream_index == audio_stream_idx) {

        ret = avcodec_decode_audio4(audio_dec_ctx, frame, got_frame, &pkt);
        if (ret < 0) {
            fprintf(stderr, "Error decoding audio frame (%s)\n", av_err2str(ret));
            return ret;
        }




        decoded = FFMIN(ret, pkt.size);

        if (*got_frame) {
            size_t unpadded_linesize = frame->nb_samples * av_get_bytes_per_sample(frame->format);
            printf("audio_frame%s n:%d nb_samples:%d pts:%s\n",
                   cached ? "(cached)" : "",
                   audio_frame_count++, frame->nb_samples,
                   av_ts2timestr(frame->pts, &audio_dec_ctx->time_base));
            fwrite(frame->extended_data[0], 1, unpadded_linesize, audio_dst_file);
        }
    }



    if (*got_frame && refcount)
        av_frame_unref(frame);

    return decoded;
}
