
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
typedef int buf ;
struct TYPE_7__ {char* channels; scalar_t__ channel_layout; } ;
struct TYPE_6__ {TYPE_1__* st; } ;
struct TYPE_5__ {TYPE_3__* codecpar; } ;
typedef TYPE_2__ MovieStream ;
typedef TYPE_3__ AVCodecParameters ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int EINVAL ;
 int av_get_channel_layout_string (char*,int,char*,scalar_t__) ;
 scalar_t__ av_get_default_channel_layout (char*) ;
 int av_log (void*,int ,char*,int,char*) ;

__attribute__((used)) static int guess_channel_layout(MovieStream *st, int st_index, void *log_ctx)
{
    AVCodecParameters *dec_par = st->st->codecpar;
    char buf[256];
    int64_t chl = av_get_default_channel_layout(dec_par->channels);

    if (!chl) {
        av_log(log_ctx, AV_LOG_ERROR,
               "Channel layout is not set in stream %d, and could not "
               "be guessed from the number of channels (%d)\n",
               st_index, dec_par->channels);
        return AVERROR(EINVAL);
    }

    av_get_channel_layout_string(buf, sizeof(buf), dec_par->channels, chl);
    av_log(log_ctx, AV_LOG_WARNING,
           "Channel layout is not set in output stream %d, "
           "guessed channel layout is '%s'\n",
           st_index, buf);
    dec_par->channel_layout = chl;
    return 0;
}
