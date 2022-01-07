
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct hist_node {int dummy; } ;
struct TYPE_3__ {int height; int* linesize; int width; scalar_t__* data; } ;
typedef TYPE_1__ AVFrame ;


 int color_inc (struct hist_node*,int const) ;

__attribute__((used)) static int update_histogram_frame(struct hist_node *hist, const AVFrame *f)
{
    int x, y, ret, nb_diff_colors = 0;

    for (y = 0; y < f->height; y++) {
        const uint32_t *p = (const uint32_t *)(f->data[0] + y*f->linesize[0]);

        for (x = 0; x < f->width; x++) {
            ret = color_inc(hist, p[x]);
            if (ret < 0)
                return ret;
            nb_diff_colors += ret;
        }
    }
    return nb_diff_colors;
}
