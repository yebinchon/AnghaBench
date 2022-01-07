
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVExpr ;


 int AV_LOG_ERROR ;
 int av_expr_free (int *) ;
 int av_expr_parse (int **,char const*,int ,int *,int *,int *,int *,int ,void*) ;
 int av_log (void*,int ,char*,char const*,char const*) ;
 int var_names ;

__attribute__((used)) static int set_expr(AVExpr **pexpr, const char *expr, const char *option, void *log_ctx)
{
    int ret;
    AVExpr *old = ((void*)0);

    if (*pexpr)
        old = *pexpr;
    ret = av_expr_parse(pexpr, expr, var_names, ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, log_ctx);
    if (ret < 0) {
        av_log(log_ctx, AV_LOG_ERROR,
               "Error when parsing the expression '%s' for %s\n",
               expr, option);
        *pexpr = old;
        return ret;
    }

    av_expr_free(old);
    return 0;
}
