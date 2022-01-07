
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dist_coeff; int pre_filter_buf; int * pre_filter_context; } ;
typedef TYPE_1__ FilterParam ;


 int av_freep (int *) ;
 int sws_freeContext (int *) ;

__attribute__((used)) static void close_filter_param(FilterParam *f)
{
    if (f->pre_filter_context) {
        sws_freeContext(f->pre_filter_context);
        f->pre_filter_context = ((void*)0);
    }
    av_freep(&f->pre_filter_buf);
    av_freep(&f->dist_coeff);
}
