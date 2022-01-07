
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_18__ {int h; int w; int data; } ;
typedef TYPE_2__ image ;
struct TYPE_16__ {int * vals; } ;
struct TYPE_17__ {int rows; int cols; int * vals; } ;
struct TYPE_19__ {TYPE_10__ y; TYPE_1__ X; scalar_t__ shallow; int member_0; } ;
typedef TYPE_3__ data ;
struct TYPE_20__ {int aspect; int dy; int dx; int h; int w; int scale; int rad; } ;
typedef TYPE_4__ augment_args ;


 int * calloc (int,int) ;
 int fill_truth_iseg (char*,int,int ,int,int ,int ,TYPE_4__,int,int,int) ;
 int flip_image (TYPE_2__) ;
 int free (char**) ;
 int free_image (TYPE_2__) ;
 char** get_random_paths (char**,int,int) ;
 TYPE_2__ load_image_color (char*,int ,int ) ;
 TYPE_10__ make_matrix (int,int) ;
 int rand () ;
 TYPE_4__ random_augment_args (TYPE_2__,float,float,int,int,int,int) ;
 int random_distort_image (TYPE_2__,float,float,float) ;
 TYPE_2__ rotate_crop_image (TYPE_2__,int ,int ,int ,int ,int ,int ,int ) ;

data load_data_iseg(int n, char **paths, int m, int w, int h, int classes, int boxes, int div, int min, int max, float angle, float aspect, float hue, float saturation, float exposure)
{
    char **random_paths = get_random_paths(paths, n, m);
    int i;
    data d = {0};
    d.shallow = 0;

    d.X.rows = n;
    d.X.vals = calloc(d.X.rows, sizeof(float*));
    d.X.cols = h*w*3;

    d.y = make_matrix(n, (((w/div)*(h/div))+1)*boxes);

    for(i = 0; i < n; ++i){
        image orig = load_image_color(random_paths[i], 0, 0);
        augment_args a = random_augment_args(orig, angle, aspect, min, max, w, h);
        image sized = rotate_crop_image(orig, a.rad, a.scale, a.w, a.h, a.dx, a.dy, a.aspect);

        int flip = rand()%2;
        if(flip) flip_image(sized);
        random_distort_image(sized, hue, saturation, exposure);
        d.X.vals[i] = sized.data;


        fill_truth_iseg(random_paths[i], boxes, d.y.vals[i], classes, orig.w, orig.h, a, flip, w/div, h/div);

        free_image(orig);
    }
    free(random_paths);
    return d;
}
