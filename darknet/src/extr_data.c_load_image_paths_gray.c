
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int rows; int cols; int * vals; } ;
typedef TYPE_1__ matrix ;
struct TYPE_9__ {int h; int w; int c; int data; } ;
typedef TYPE_2__ image ;


 int * calloc (int,int) ;
 int free_image (TYPE_2__) ;
 TYPE_2__ grayscale_image (TYPE_2__) ;
 TYPE_2__ load_image (char*,int,int,int) ;

matrix load_image_paths_gray(char **paths, int n, int w, int h)
{
    int i;
    matrix X;
    X.rows = n;
    X.vals = calloc(X.rows, sizeof(float*));
    X.cols = 0;

    for(i = 0; i < n; ++i){
        image im = load_image(paths[i], w, h, 3);

        image gray = grayscale_image(im);
        free_image(im);
        im = gray;

        X.vals[i] = im.data;
        X.cols = im.h*im.w*im.c;
    }
    return X;
}
