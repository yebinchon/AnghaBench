
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int buffersink_ctx; int buffersrc_ctx; } ;
struct TYPE_9__ {int pict_type; } ;
typedef TYPE_1__ AVFrame ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int AV_PICTURE_TYPE_NONE ;
 int EAGAIN ;
 int ENOMEM ;
 int av_buffersink_get_frame (int ,TYPE_1__*) ;
 int av_buffersrc_add_frame_flags (int ,TYPE_1__*,int ) ;
 TYPE_1__* av_frame_alloc () ;
 int av_frame_free (TYPE_1__**) ;
 int av_log (int *,int ,char*) ;
 int encode_write_frame (TYPE_1__*,unsigned int,int *) ;
 TYPE_3__* filter_ctx ;

__attribute__((used)) static int filter_encode_write_frame(AVFrame *frame, unsigned int stream_index)
{
    int ret;
    AVFrame *filt_frame;

    av_log(((void*)0), AV_LOG_INFO, "Pushing decoded frame to filters\n");

    ret = av_buffersrc_add_frame_flags(filter_ctx[stream_index].buffersrc_ctx,
            frame, 0);
    if (ret < 0) {
        av_log(((void*)0), AV_LOG_ERROR, "Error while feeding the filtergraph\n");
        return ret;
    }


    while (1) {
        filt_frame = av_frame_alloc();
        if (!filt_frame) {
            ret = AVERROR(ENOMEM);
            break;
        }
        av_log(((void*)0), AV_LOG_INFO, "Pulling filtered frame from filters\n");
        ret = av_buffersink_get_frame(filter_ctx[stream_index].buffersink_ctx,
                filt_frame);
        if (ret < 0) {




            if (ret == AVERROR(EAGAIN) || ret == AVERROR_EOF)
                ret = 0;
            av_frame_free(&filt_frame);
            break;
        }

        filt_frame->pict_type = AV_PICTURE_TYPE_NONE;
        ret = encode_write_frame(filt_frame, stream_index, ((void*)0));
        if (ret < 0)
            break;
    }

    return ret;
}
