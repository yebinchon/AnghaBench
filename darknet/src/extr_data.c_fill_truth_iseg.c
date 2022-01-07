
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {float* data; } ;
typedef TYPE_1__ image ;
struct TYPE_13__ {int aspect; int dy; int dx; int h; int w; int scale; int rad; } ;
typedef TYPE_2__ augment_args ;
typedef int FILE ;


 int fclose (int *) ;
 int file_error (char*) ;
 int find_replace (char*,char*,char*,char*) ;
 int flip_image (TYPE_1__) ;
 int * fopen (char*,char*) ;
 int free (int*) ;
 int free_image (TYPE_1__) ;
 int fscanf (int *,char*,int*,char*) ;
 int load_rle (TYPE_1__,int*,int) ;
 TYPE_1__ make_image (int,int,int) ;
 int* read_intlist (char*,int*,int ) ;
 TYPE_1__ resize_image (TYPE_1__,int,int) ;
 TYPE_1__ rotate_crop_image (TYPE_1__,int ,int ,int ,int ,int ,int ,int ) ;

void fill_truth_iseg(char *path, int num_boxes, float *truth, int classes, int w, int h, augment_args aug, int flip, int mw, int mh)
{
    char labelpath[4096];
    find_replace(path, "images", "mask", labelpath);
    find_replace(labelpath, "JPEGImages", "mask", labelpath);
    find_replace(labelpath, ".jpg", ".txt", labelpath);
    find_replace(labelpath, ".JPG", ".txt", labelpath);
    find_replace(labelpath, ".JPEG", ".txt", labelpath);
    FILE *file = fopen(labelpath, "r");
    if(!file) file_error(labelpath);
    char buff[32788];
    int id;
    int i = 0;
    int j;
    image part = make_image(w, h, 1);
    while((fscanf(file, "%d %s", &id, buff) == 2) && i < num_boxes){
        int n = 0;
        int *rle = read_intlist(buff, &n, 0);
        load_rle(part, rle, n);
        image sized = rotate_crop_image(part, aug.rad, aug.scale, aug.w, aug.h, aug.dx, aug.dy, aug.aspect);
        if(flip) flip_image(sized);

        image mask = resize_image(sized, mw, mh);
        truth[i*(mw*mh+1)] = id;
        for(j = 0; j < mw*mh; ++j){
            truth[i*(mw*mh + 1) + 1 + j] = mask.data[j];
        }
        ++i;

        free_image(mask);
        free_image(sized);
        free(rle);
    }
    if(i < num_boxes) truth[i*(mw*mh+1)] = -1;
    fclose(file);
    free_image(part);
}
