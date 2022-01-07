
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int diff_lines; int diff_blocks; int block_height; int comp_size; int tot_blocks; double rows; double cols; double image_width; } ;
typedef TYPE_1__ FlashSV2Context ;


 int FFCLIP (int,int,int) ;
 double block_size_fraction ;
 int pow (int,double) ;
 double sqrt (double) ;

__attribute__((used)) static int optimum_block_width(FlashSV2Context * s)
{

    double save = (1-pow(s->diff_lines/s->diff_blocks/s->block_height, 0.5)) * s->comp_size/s->tot_blocks;
    double width = block_size_fraction * sqrt(0.5 * save * s->rows * s->cols) * s->image_width;
    int pwidth = ((int) width);
    return FFCLIP(pwidth & ~15, 256, 16);



}
