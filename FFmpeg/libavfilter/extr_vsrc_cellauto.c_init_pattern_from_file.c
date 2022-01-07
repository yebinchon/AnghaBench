
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int file_bufsize; scalar_t__* pattern; int file_buf; int filename; } ;
typedef TYPE_1__ CellAutoContext ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_file_map (int ,int *,int*,int ,TYPE_2__*) ;
 scalar_t__* av_malloc (int) ;
 int init_pattern_from_string (TYPE_2__*) ;
 int memcpy (scalar_t__*,int ,int) ;

__attribute__((used)) static int init_pattern_from_file(AVFilterContext *ctx)
{
    CellAutoContext *s = ctx->priv;
    int ret;

    ret = av_file_map(s->filename,
                      &s->file_buf, &s->file_bufsize, 0, ctx);
    if (ret < 0)
        return ret;


    s->pattern = av_malloc(s->file_bufsize + 1);
    if (!s->pattern)
        return AVERROR(ENOMEM);
    memcpy(s->pattern, s->file_buf, s->file_bufsize);
    s->pattern[s->file_bufsize] = 0;

    return init_pattern_from_string(ctx);
}
