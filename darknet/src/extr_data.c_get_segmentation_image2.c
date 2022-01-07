
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int* data; } ;
typedef TYPE_1__ image ;
typedef int FILE ;


 int fclose (int *) ;
 int file_error (char*) ;
 int find_replace (char*,char*,char*,char*) ;
 int * fopen (char*,char*) ;
 int free (int*) ;
 int free_image (TYPE_1__) ;
 int fscanf (int *,char*,int*,char*) ;
 int load_rle (TYPE_1__,int*,int) ;
 TYPE_1__ make_image (int,int,int) ;
 int or_image (TYPE_1__,TYPE_1__,int) ;
 int* read_intlist (char*,int*,int ) ;

image get_segmentation_image2(char *path, int w, int h, int classes)
{
    char labelpath[4096];
    find_replace(path, "images", "mask", labelpath);
    find_replace(labelpath, "JPEGImages", "mask", labelpath);
    find_replace(labelpath, ".jpg", ".txt", labelpath);
    find_replace(labelpath, ".JPG", ".txt", labelpath);
    find_replace(labelpath, ".JPEG", ".txt", labelpath);
    image mask = make_image(w, h, classes+1);
    int i;
    for(i = 0; i < w*h; ++i){
        mask.data[w*h*classes + i] = 1;
    }
    FILE *file = fopen(labelpath, "r");
    if(!file) file_error(labelpath);
    char buff[32788];
    int id;
    image part = make_image(w, h, 1);
    while(fscanf(file, "%d %s", &id, buff) == 2){
        int n = 0;
        int *rle = read_intlist(buff, &n, 0);
        load_rle(part, rle, n);
        or_image(part, mask, id);
        for(i = 0; i < w*h; ++i){
            if(part.data[i]) mask.data[w*h*classes + i] = 0;
        }
        free(rle);
    }

    fclose(file);
    free_image(part);
    return mask;
}
