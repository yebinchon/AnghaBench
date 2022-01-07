
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int image ;


 int collapse_images_vert (int *,int) ;
 int free_image (int ) ;
 int normalize_image (int ) ;
 int save_image (int ,char*) ;
 int show_image (int ,char*,int) ;

void show_images(image *ims, int n, char *window)
{
    image m = collapse_images_vert(ims, n);
    normalize_image(m);
    save_image(m, window);
    show_image(m, window, 1);
    free_image(m);
}
