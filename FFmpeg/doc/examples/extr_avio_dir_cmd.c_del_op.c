
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_LOG_ERROR ;
 int av_err2str (int) ;
 int av_log (int *,int ,char*,char const*,int ) ;
 int avpriv_io_delete (char const*) ;

__attribute__((used)) static int del_op(const char *url)
{
    int ret = avpriv_io_delete(url);
    if (ret < 0)
        av_log(((void*)0), AV_LOG_ERROR, "Cannot delete '%s': %s.\n", url, av_err2str(ret));
    return ret;
}
