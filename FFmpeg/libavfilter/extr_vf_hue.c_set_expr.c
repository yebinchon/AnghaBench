
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVExpr ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int av_expr_free (int *) ;
 int av_expr_parse (int **,char const*,int ,int *,int *,int *,int *,int ,void*) ;
 int av_free (char*) ;
 int av_freep (char**) ;
 int av_log (void*,int ,char*,char const*,char const*) ;
 char* av_strdup (char const*) ;
 int var_names ;

__attribute__((used)) static int set_expr(AVExpr **pexpr_ptr, char **expr_ptr,
                    const char *expr, const char *option, void *log_ctx)
{
    int ret;
    AVExpr *new_pexpr;
    char *new_expr;

    new_expr = av_strdup(expr);
    if (!new_expr)
        return AVERROR(ENOMEM);
    ret = av_expr_parse(&new_pexpr, expr, var_names,
                        ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, log_ctx);
    if (ret < 0) {
        av_log(log_ctx, AV_LOG_ERROR,
               "Error when evaluating the expression '%s' for %s\n",
               expr, option);
        av_free(new_expr);
        return ret;
    }

    if (*pexpr_ptr)
        av_expr_free(*pexpr_ptr);
    *pexpr_ptr = new_pexpr;
    av_freep(expr_ptr);
    *expr_ptr = new_expr;

    return 0;
}
