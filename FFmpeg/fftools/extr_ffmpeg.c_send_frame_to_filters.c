
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nb_filters; int * filters; int * filter_frame; } ;
typedef TYPE_1__ InputStream ;
typedef int AVFrame ;


 int AVERROR_EOF ;
 int AV_LOG_ERROR ;
 int av_assert1 (int) ;
 int av_err2str (int) ;
 int av_frame_ref (int *,int *) ;
 int av_log (int *,int ,char*,int ) ;
 int ifilter_send_frame (int ,int *) ;

__attribute__((used)) static int send_frame_to_filters(InputStream *ist, AVFrame *decoded_frame)
{
    int i, ret;
    AVFrame *f;

    av_assert1(ist->nb_filters > 0);
    for (i = 0; i < ist->nb_filters; i++) {
        if (i < ist->nb_filters - 1) {
            f = ist->filter_frame;
            ret = av_frame_ref(f, decoded_frame);
            if (ret < 0)
                break;
        } else
            f = decoded_frame;
        ret = ifilter_send_frame(ist->filters[i], f);
        if (ret == AVERROR_EOF)
            ret = 0;
        if (ret < 0) {
            av_log(((void*)0), AV_LOG_ERROR,
                   "Failed to inject frame into filter network: %s\n", av_err2str(ret));
            break;
        }
    }
    return ret;
}
