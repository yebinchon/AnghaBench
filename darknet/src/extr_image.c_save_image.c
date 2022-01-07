
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int image ;


 int JPG ;
 int save_image_options (int ,char const*,int ,int) ;

void save_image(image im, const char *name)
{
    save_image_options(im, name, JPG, 80);
}
