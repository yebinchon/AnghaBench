
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ pix_fmt; int height; int width; } ;
struct TYPE_8__ {TYPE_1__* st; int * tmp_frame; void* frame; TYPE_3__* enc; } ;
struct TYPE_7__ {int codecpar; } ;
typedef TYPE_2__ OutputStream ;
typedef int AVFormatContext ;
typedef int AVDictionary ;
typedef TYPE_3__ AVCodecContext ;
typedef int AVCodec ;


 scalar_t__ AV_PIX_FMT_YUV420P ;
 void* alloc_picture (scalar_t__,int ,int ) ;
 int av_dict_copy (int **,int *,int ) ;
 int av_dict_free (int **) ;
 char* av_err2str (int) ;
 int avcodec_open2 (TYPE_3__*,int *,int **) ;
 int avcodec_parameters_from_context (int ,TYPE_3__*) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void open_video(AVFormatContext *oc, AVCodec *codec, OutputStream *ost, AVDictionary *opt_arg)
{
    int ret;
    AVCodecContext *c = ost->enc;
    AVDictionary *opt = ((void*)0);

    av_dict_copy(&opt, opt_arg, 0);


    ret = avcodec_open2(c, codec, &opt);
    av_dict_free(&opt);
    if (ret < 0) {
        fprintf(stderr, "Could not open video codec: %s\n", av_err2str(ret));
        exit(1);
    }


    ost->frame = alloc_picture(c->pix_fmt, c->width, c->height);
    if (!ost->frame) {
        fprintf(stderr, "Could not allocate video frame\n");
        exit(1);
    }




    ost->tmp_frame = ((void*)0);
    if (c->pix_fmt != AV_PIX_FMT_YUV420P) {
        ost->tmp_frame = alloc_picture(AV_PIX_FMT_YUV420P, c->width, c->height);
        if (!ost->tmp_frame) {
            fprintf(stderr, "Could not allocate temporary picture\n");
            exit(1);
        }
    }


    ret = avcodec_parameters_from_context(ost->st->codecpar, c);
    if (ret < 0) {
        fprintf(stderr, "Could not copy the stream parameters\n");
        exit(1);
    }
}
