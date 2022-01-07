
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int AVIO_FLAG_WRITE ;
 int AV_LOG_ERROR ;
 int av_err2str (int) ;
 int av_log (int *,int ,char*,char const*,int ) ;
 int avio_open2 (int **,char const*,int ,int *,int *) ;
 int int_cb ;
 int * progress_avio ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int opt_progress(void *optctx, const char *opt, const char *arg)
{
    AVIOContext *avio = ((void*)0);
    int ret;

    if (!strcmp(arg, "-"))
        arg = "pipe:";
    ret = avio_open2(&avio, arg, AVIO_FLAG_WRITE, &int_cb, ((void*)0));
    if (ret < 0) {
        av_log(((void*)0), AV_LOG_ERROR, "Failed to open progress URL \"%s\": %s\n",
               arg, av_err2str(ret));
        return ret;
    }
    progress_avio = avio;
    return 0;
}
