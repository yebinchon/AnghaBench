
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {char* pattern; int w; double h; int* buf; } ;
typedef TYPE_1__ CellAutoContext ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 double M_PHI ;
 int av_isgraph (int ) ;
 int av_log (TYPE_2__*,int ,char*,int,...) ;
 int* av_mallocz_array (int,double) ;
 int strlen (char*) ;

__attribute__((used)) static int init_pattern_from_string(AVFilterContext *ctx)
{
    CellAutoContext *s = ctx->priv;
    char *p;
    int i, w = 0;

    w = strlen(s->pattern);
    av_log(ctx, AV_LOG_DEBUG, "w:%d\n", w);

    if (s->w) {
        if (w > s->w) {
            av_log(ctx, AV_LOG_ERROR,
                   "The specified width is %d which cannot contain the provided string width of %d\n",
                   s->w, w);
            return AVERROR(EINVAL);
        }
    } else {

        s->w = w;
        s->h = (double)s->w * M_PHI;
    }

    s->buf = av_mallocz_array(sizeof(uint8_t) * s->w, s->h);
    if (!s->buf)
        return AVERROR(ENOMEM);


    p = s->pattern;
    for (i = (s->w - w)/2;; i++) {
        av_log(ctx, AV_LOG_DEBUG, "%d %c\n", i, *p == '\n' ? 'N' : *p);
        if (*p == '\n' || !*p)
            break;
        else
            s->buf[i] = !!av_isgraph(*(p++));
    }

    return 0;
}
