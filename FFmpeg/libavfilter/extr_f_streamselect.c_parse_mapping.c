
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int const nb_inputs; TYPE_1__* priv; } ;
struct TYPE_5__ {int nb_inputs; int* map; int nb_map; } ;
typedef TYPE_1__ StreamSelectContext ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int EINVAL ;
 int ENOMEM ;
 int* av_calloc (int,int) ;
 int av_free (int*) ;
 int av_freep (int**) ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 int strtol (char const*,char**,int ) ;

__attribute__((used)) static int parse_mapping(AVFilterContext *ctx, const char *map)
{
    StreamSelectContext *s = ctx->priv;
    int *new_map;
    int new_nb_map = 0;

    if (!map) {
        av_log(ctx, AV_LOG_ERROR, "mapping definition is not set\n");
        return AVERROR(EINVAL);
    }

    new_map = av_calloc(s->nb_inputs, sizeof(*new_map));
    if (!new_map)
        return AVERROR(ENOMEM);

    while (1) {
        char *p;
        const int n = strtol(map, &p, 0);

        av_log(ctx, AV_LOG_DEBUG, "n=%d map=%p p=%p\n", n, map, p);

        if (map == p)
            break;
        map = p;

        if (new_nb_map >= s->nb_inputs) {
            av_log(ctx, AV_LOG_ERROR, "Unable to map more than the %d "
                   "input pads available\n", s->nb_inputs);
            av_free(new_map);
            return AVERROR(EINVAL);
        }

        if (n < 0 || n >= ctx->nb_inputs) {
            av_log(ctx, AV_LOG_ERROR, "Input stream index %d doesn't exist "
                   "(there is only %d input streams defined)\n",
                   n, s->nb_inputs);
            av_free(new_map);
            return AVERROR(EINVAL);
        }

        av_log(ctx, AV_LOG_VERBOSE, "Map input stream %d to output stream %d\n", n, new_nb_map);
        new_map[new_nb_map++] = n;
    }

    if (!new_nb_map) {
        av_log(ctx, AV_LOG_ERROR, "invalid mapping\n");
        av_free(new_map);
        return AVERROR(EINVAL);
    }

    av_freep(&s->map);
    s->map = new_map;
    s->nb_map = new_nb_map;

    av_log(ctx, AV_LOG_VERBOSE, "%d map set\n", s->nb_map);

    return 0;
}
