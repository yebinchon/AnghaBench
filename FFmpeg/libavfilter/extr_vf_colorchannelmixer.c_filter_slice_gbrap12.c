
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFilterContext ;


 int filter_slice_rgba16_planar (int *,void*,int,int,int,int) ;

__attribute__((used)) static int filter_slice_gbrap12(AVFilterContext *ctx, void *arg, int jobnr, int nb_jobs)
{
    return filter_slice_rgba16_planar(ctx, arg, jobnr, nb_jobs, 1, 12);
}
