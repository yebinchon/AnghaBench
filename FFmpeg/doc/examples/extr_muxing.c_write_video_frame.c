
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int time_base; } ;
struct TYPE_11__ {int member_0; } ;
struct TYPE_10__ {int st; TYPE_3__* enc; } ;
typedef TYPE_1__ OutputStream ;
typedef TYPE_2__ AVPacket ;
typedef int AVFrame ;
typedef int AVFormatContext ;
typedef TYPE_3__ AVCodecContext ;


 char* av_err2str (int) ;
 int av_init_packet (TYPE_2__*) ;
 int avcodec_encode_video2 (TYPE_3__*,TYPE_2__*,int *,int*) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int * get_video_frame (TYPE_1__*) ;
 int stderr ;
 int write_frame (int *,int *,int ,TYPE_2__*) ;

__attribute__((used)) static int write_video_frame(AVFormatContext *oc, OutputStream *ost)
{
    int ret;
    AVCodecContext *c;
    AVFrame *frame;
    int got_packet = 0;
    AVPacket pkt = { 0 };

    c = ost->enc;

    frame = get_video_frame(ost);

    av_init_packet(&pkt);


    ret = avcodec_encode_video2(c, &pkt, frame, &got_packet);
    if (ret < 0) {
        fprintf(stderr, "Error encoding video frame: %s\n", av_err2str(ret));
        exit(1);
    }

    if (got_packet) {
        ret = write_frame(oc, &c->time_base, ost->st, &pkt);
    } else {
        ret = 0;
    }

    if (ret < 0) {
        fprintf(stderr, "Error while writing video frame: %s\n", av_err2str(ret));
        exit(1);
    }

    return (frame || got_packet) ? 0 : 1;
}
