
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; int const linesize_in; int pixel_composition; int width; scalar_t__ data_in; int modifier; } ;
typedef TYPE_1__ VignettingThreadData ;
typedef int AVFilterContext ;


 int lf_modifier_apply_color_modification (int ,scalar_t__,int ,int const,int ,int const,int ,int const) ;

__attribute__((used)) static int vignetting_filter_slice(AVFilterContext *ctx, void *arg, int jobnr, int nb_jobs)
{
    const VignettingThreadData *thread_data = arg;
    const int slice_start = thread_data->height * jobnr / nb_jobs;
    const int slice_end = thread_data->height * (jobnr + 1) / nb_jobs;

    lf_modifier_apply_color_modification(thread_data->modifier,
                                         thread_data->data_in + slice_start * thread_data->linesize_in,
                                         0,
                                         slice_start,
                                         thread_data->width,
                                         slice_end - slice_start,
                                         thread_data->pixel_composition,
                                         thread_data->linesize_in);

    return 0;
}
