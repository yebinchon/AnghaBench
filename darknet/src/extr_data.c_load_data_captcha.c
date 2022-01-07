
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * vals; } ;
struct TYPE_4__ {TYPE_2__ y; int X; scalar_t__ shallow; int member_0; } ;
typedef TYPE_1__ data ;


 int NUMCHARS ;
 int fill_truth_captcha (char*,int,int ) ;
 int free (char**) ;
 char** get_random_paths (char**,int,int) ;
 int load_image_paths (char**,int,int,int) ;
 TYPE_2__ make_matrix (int,int) ;

data load_data_captcha(char **paths, int n, int m, int k, int w, int h)
{
    if(m) paths = get_random_paths(paths, n, m);
    data d = {0};
    d.shallow = 0;
    d.X = load_image_paths(paths, n, w, h);
    d.y = make_matrix(n, k*NUMCHARS);
    int i;
    for(i = 0; i < n; ++i){
        fill_truth_captcha(paths[i], k, d.y.vals[i]);
    }
    if(m) free(paths);
    return d;
}
