
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double* sono_v_buf; int cqt_len; double* bar_v_buf; double timeclamp; double* freq; int ctx; int bar_v; int sono_v; } ;
typedef TYPE_1__ ShowCQTContext ;
typedef int AVExpr ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int VOLUME_MAX ;
 int a_weighting ;
 int av_expr_eval (int *,double*,int *) ;
 int av_expr_free (int *) ;
 int av_expr_parse (int **,int ,char const**,char const**,double (*) (void*,double),int *,int *,int ,int ) ;
 int av_freep (double**) ;
 void* av_malloc_array (int,int) ;
 int b_weighting ;
 int c_weighting ;
 double clip_with_log (int ,char*,int ,double,int ,double,int) ;

__attribute__((used)) static int init_volume(ShowCQTContext *s)
{
    const char *func_names[] = { "a_weighting", "b_weighting", "c_weighting", ((void*)0) };
    const char *sono_names[] = { "timeclamp", "tc", "frequency", "freq", "f", "bar_v", ((void*)0) };
    const char *bar_names[] = { "timeclamp", "tc", "frequency", "freq", "f", "sono_v", ((void*)0) };
    double (*funcs[])(void *, double) = { a_weighting, b_weighting, c_weighting };
    AVExpr *sono = ((void*)0), *bar = ((void*)0);
    int x, ret = AVERROR(ENOMEM);

    s->sono_v_buf = av_malloc_array(s->cqt_len, sizeof(*s->sono_v_buf));
    s->bar_v_buf = av_malloc_array(s->cqt_len, sizeof(*s->bar_v_buf));
    if (!s->sono_v_buf || !s->bar_v_buf)
        goto error;

    if ((ret = av_expr_parse(&sono, s->sono_v, sono_names, func_names, funcs, ((void*)0), ((void*)0), 0, s->ctx)) < 0)
        goto error;

    if ((ret = av_expr_parse(&bar, s->bar_v, bar_names, func_names, funcs, ((void*)0), ((void*)0), 0, s->ctx)) < 0)
        goto error;

    for (x = 0; x < s->cqt_len; x++) {
        double vars[] = { s->timeclamp, s->timeclamp, s->freq[x], s->freq[x], s->freq[x], 0.0 };
        double vol = clip_with_log(s->ctx, "sono_v", av_expr_eval(sono, vars, ((void*)0)), 0.0, VOLUME_MAX, 0.0, x);
        vars[5] = vol;
        vol = clip_with_log(s->ctx, "bar_v", av_expr_eval(bar, vars, ((void*)0)), 0.0, VOLUME_MAX, 0.0, x);
        s->bar_v_buf[x] = vol * vol;
        vars[5] = vol;
        vol = clip_with_log(s->ctx, "sono_v", av_expr_eval(sono, vars, ((void*)0)), 0.0, VOLUME_MAX, 0.0, x);
        s->sono_v_buf[x] = vol * vol;
    }
    av_expr_free(sono);
    av_expr_free(bar);
    return 0;

error:
    av_freep(&s->sono_v_buf);
    av_freep(&s->bar_v_buf);
    av_expr_free(sono);
    av_expr_free(bar);
    return ret;
}
