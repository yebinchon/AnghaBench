
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int format; int linesize; int data; } ;
typedef TYPE_1__ AVFrame ;


 int av_image_copy (int ,int ,int const**,int*,int ,int,int) ;
 int av_image_fill_arrays (int **,int*,int const*,int ,int,int,int) ;

__attribute__((used)) static void copy_frame(AVFrame *f, const uint8_t *src, int width, int height)
{
    uint8_t *src_data[4];
    int src_linesize[4];
    av_image_fill_arrays(src_data, src_linesize, src,
                         f->format, width, height, 1);
    av_image_copy(f->data, f->linesize, (const uint8_t **)src_data, src_linesize,
                  f->format, width, height);
}
