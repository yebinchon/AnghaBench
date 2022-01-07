
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_LOG_ERROR ;
 int av_err2str (int) ;
 int av_log (int *,int ,char*,char const*,char const*,int ) ;
 int avpriv_io_move (char const*,char const*) ;

__attribute__((used)) static int move_op(const char *src, const char *dst)
{
    int ret = avpriv_io_move(src, dst);
    if (ret < 0)
        av_log(((void*)0), AV_LOG_ERROR, "Cannot move '%s' into '%s': %s.\n", src, dst, av_err2str(ret));
    return ret;
}
