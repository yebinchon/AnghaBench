
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVSliceThread ;


 int AVERROR (int ) ;
 int EINVAL ;

int avpriv_slicethread_create(AVSliceThread **pctx, void *priv,
                              void (*worker_func)(void *priv, int jobnr, int threadnr, int nb_jobs, int nb_threads),
                              void (*main_func)(void *priv),
                              int nb_threads)
{
    *pctx = ((void*)0);
    return AVERROR(EINVAL);
}
