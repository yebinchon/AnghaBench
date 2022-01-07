
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int** vals; } ;
typedef TYPE_1__ matrix ;
typedef int FILE ;


 int fclose (int *) ;
 int find_replace (char*,char*,char*,char*) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,char*,int*) ;
 TYPE_1__ make_matrix (int,int) ;

matrix load_tags_paths(char **paths, int n, int k)
{
    matrix y = make_matrix(n, k);
    int i;

    for(i = 0; i < n; ++i){
        char label[4096];
        find_replace(paths[i], "images", "labels", label);
        find_replace(label, ".jpg", ".txt", label);
        FILE *file = fopen(label, "r");
        if (!file) continue;

        int tag;
        while(fscanf(file, "%d", &tag) == 1){
            if(tag < k){
                y.vals[i][tag] = 1;
            }
        }
        fclose(file);
    }

    return y;
}
