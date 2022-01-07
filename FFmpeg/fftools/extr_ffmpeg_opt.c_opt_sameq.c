
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (int *,int ,char*,char const*,char const*) ;

__attribute__((used)) static int opt_sameq(void *optctx, const char *opt, const char *arg)
{
    av_log(((void*)0), AV_LOG_ERROR, "Option '%s' was removed. "
           "If you are looking for an option to preserve the quality (which is not "
           "what -%s was for), use -qscale 0 or an equivalent quality factor option.\n",
           opt, opt);
    return AVERROR(EINVAL);
}
