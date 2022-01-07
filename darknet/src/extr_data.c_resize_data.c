
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int image ;
struct TYPE_6__ {int rows; int cols; int * vals; } ;
struct TYPE_7__ {int w; int h; TYPE_1__ X; int y; scalar_t__ shallow; int member_0; } ;
typedef TYPE_2__ data ;
struct TYPE_8__ {int data; } ;


 int * calloc (int,int) ;
 int copy_matrix (int ) ;
 int float_to_image (int,int,int,int ) ;
 TYPE_3__ resize_image (int ,int,int) ;

data resize_data(data orig, int w, int h)
{
    data d = {0};
    d.shallow = 0;
    d.w = w;
    d.h = h;
    int i;
    d.X.rows = orig.X.rows;
    d.X.cols = w*h*3;
    d.X.vals = calloc(d.X.rows, sizeof(float*));

    d.y = copy_matrix(orig.y);
#pragma omp parallel for
 for(i = 0; i < orig.X.rows; ++i){
        image im = float_to_image(orig.w, orig.h, 3, orig.X.vals[i]);
        d.X.vals[i] = resize_image(im, w, h).data;
    }
    return d;
}
