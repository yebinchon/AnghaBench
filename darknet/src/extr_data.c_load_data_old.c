
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int X; scalar_t__ shallow; int member_0; } ;
typedef TYPE_1__ data ;


 int free (char**) ;
 char** get_random_paths (char**,int,int) ;
 int load_image_paths (char**,int,int,int) ;
 int load_labels_paths (char**,int,char**,int,int ) ;

data load_data_old(char **paths, int n, int m, char **labels, int k, int w, int h)
{
    if(m) paths = get_random_paths(paths, n, m);
    data d = {0};
    d.shallow = 0;
    d.X = load_image_paths(paths, n, w, h);
    d.y = load_labels_paths(paths, n, labels, k, 0);
    if(m) free(paths);
    return d;
}
