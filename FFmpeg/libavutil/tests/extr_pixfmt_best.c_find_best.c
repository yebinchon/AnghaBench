
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;


 int AV_PIX_FMT_NONE ;
 int FF_ARRAY_ELEMS (int *) ;
 int av_find_best_pix_fmt_of_2 (int,int ,int,int ,int *) ;
 int * pixfmt_list ;

__attribute__((used)) static enum AVPixelFormat find_best(enum AVPixelFormat pixfmt)
{
    enum AVPixelFormat best = AV_PIX_FMT_NONE;
    int i;
    for (i = 0; i < FF_ARRAY_ELEMS(pixfmt_list); i++)
        best = av_find_best_pix_fmt_of_2(best, pixfmt_list[i],
                                         pixfmt, 0, ((void*)0));
    return best;
}
