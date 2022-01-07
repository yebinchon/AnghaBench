
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFrame ;


 int * av_frame_alloc () ;
 int av_frame_free (int **) ;
 scalar_t__ av_frame_ref (int *,int const*) ;

AVFrame *av_frame_clone(const AVFrame *src)
{
    AVFrame *ret = av_frame_alloc();

    if (!ret)
        return ((void*)0);

    if (av_frame_ref(ret, src) < 0)
        av_frame_free(&ret);

    return ret;
}
