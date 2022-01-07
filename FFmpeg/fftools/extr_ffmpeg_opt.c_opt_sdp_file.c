
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_free (int ) ;
 int av_strdup (char const*) ;
 int sdp_filename ;

__attribute__((used)) static int opt_sdp_file(void *optctx, const char *opt, const char *arg)
{
    av_free(sdp_filename);
    sdp_filename = av_strdup(arg);
    return 0;
}
