
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* path; scalar_t__ bitcount; } ;
typedef TYPE_1__ PathCounter ;


 int NUM_CODEBOOKS ;
 int ZERO_PATH ;

__attribute__((used)) static void clear_path_counter(PathCounter *path_counter)
{
    unsigned int i;

    for (i = 0; i < NUM_CODEBOOKS + 1; i++) {
        path_counter[i].path[0] = ZERO_PATH;
        path_counter[i].path[1] = 0x00;
        path_counter[i].bitcount = 0;
    }
}
