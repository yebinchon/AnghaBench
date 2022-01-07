
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_9__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_10__ ;


typedef int uint8_t ;
struct SwsContext {int dummy; } ;
struct TYPE_32__ {int count; scalar_t__ found; } ;
typedef TYPE_3__ ccv_tld_t ;
typedef int ccv_tld_info_t ;
struct TYPE_33__ {int x; int y; int width; int height; } ;
typedef TYPE_4__ ccv_rect_t ;
typedef int ccv_dense_matrix_t ;
struct TYPE_31__ {double confidence; } ;
struct TYPE_30__ {int x; int y; int width; int height; } ;
struct TYPE_34__ {TYPE_2__ classification; TYPE_1__ rect; } ;
typedef TYPE_5__ ccv_comp_t ;
struct TYPE_37__ {int nb_streams; TYPE_6__** streams; } ;
struct TYPE_36__ {int ** data; int * linesize; } ;
struct TYPE_35__ {TYPE_10__* codec; } ;
struct TYPE_29__ {int thread_count; scalar_t__ codec_type; int width; int height; int pix_fmt; int codec_id; } ;
typedef TYPE_6__ AVStream ;
typedef int AVPicture ;
typedef TYPE_7__ AVPacket ;
typedef TYPE_7__ AVFrame ;
typedef TYPE_9__ AVFormatContext ;
typedef TYPE_10__ AVCodecContext ;
typedef int AVCodec ;


 int AVERROR (int ) ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AV_PIX_FMT_RGB24 ;
 int CCV_IO_GRAY ;
 int CCV_IO_RGB_RAW ;
 int EAGAIN ;
 int PIX_FMT_RGB24 ;
 int SWS_BICUBIC ;
 int assert (int) ;
 int atoi (char*) ;
 TYPE_7__* av_frame_alloc () ;
 int av_init_packet (TYPE_7__*) ;
 int av_read_frame (TYPE_9__*,TYPE_7__*) ;
 int av_register_all () ;
 TYPE_7__* avcodec_alloc_frame () ;
 int avcodec_decode_video2 (TYPE_10__*,TYPE_7__*,int*,TYPE_7__*) ;
 int * avcodec_find_decoder (int ) ;
 scalar_t__ avcodec_open2 (TYPE_10__*,int *,int ) ;
 int avformat_find_stream_info (TYPE_9__*,int ) ;
 int avformat_network_init () ;
 int avformat_open_input (TYPE_9__**,char*,int ,int ) ;
 int avpicture_fill (int *,int *,int ,int ,int ) ;
 int avpicture_get_size (int ,int ,int ) ;
 int ccfree (int *) ;
 scalar_t__ ccmalloc (int ) ;
 int ccv_disable_cache () ;
 int ccv_enable_default_cache () ;
 int ccv_matrix_free (int *) ;
 int ccv_read (int *,int **,int,int ,int ,int ) ;
 TYPE_4__ ccv_rect (int ,int ,int ,int ) ;
 int ccv_tld_default_params ;
 int ccv_tld_free (TYPE_3__*) ;
 TYPE_3__* ccv_tld_new (int *,TYPE_4__,int ) ;
 TYPE_5__ ccv_tld_track_object (TYPE_3__*,int *,int *,int *) ;
 int memset (TYPE_7__*,int ,int) ;
 int printf (char*,int,...) ;
 struct SwsContext* sws_getCachedContext (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int sws_scale (struct SwsContext*,int const* const*,int *,int ,int ,int **,int *) ;

int main(int argc, char** argv)
{
 return 0;
}
