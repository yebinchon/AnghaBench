
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cols; } ;
struct TYPE_4__ {TYPE_2__ X; TYPE_2__ y; scalar_t__ shallow; int member_0; } ;
typedef TYPE_1__ data ;


 int free (char**) ;
 char** get_random_paths (char**,int,int) ;
 TYPE_2__ load_image_paths (char**,int,int,int) ;

data load_data_captcha_encode(char **paths, int n, int m, int w, int h)
{
    if(m) paths = get_random_paths(paths, n, m);
    data d = {0};
    d.shallow = 0;
    d.X = load_image_paths(paths, n, w, h);
    d.X.cols = 17100;
    d.y = d.X;
    if(m) free(paths);
    return d;
}
