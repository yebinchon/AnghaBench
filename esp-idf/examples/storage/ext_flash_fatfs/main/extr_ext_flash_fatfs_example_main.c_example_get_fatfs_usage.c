
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n_fatent; int csize; size_t ssize; } ;
typedef TYPE_1__ FATFS ;


 int FR_OK ;
 int assert (int) ;
 int f_getfree (char*,size_t*,TYPE_1__**) ;

__attribute__((used)) static void example_get_fatfs_usage(size_t* out_total_bytes, size_t* out_free_bytes)
{
    FATFS *fs;
    size_t free_clusters;
    int res = f_getfree("0:", &free_clusters, &fs);
    assert(res == FR_OK);
    size_t total_sectors = (fs->n_fatent - 2) * fs->csize;
    size_t free_sectors = free_clusters * fs->csize;


    if (out_total_bytes != ((void*)0)) {
        *out_total_bytes = total_sectors * fs->ssize;
    }
    if (out_free_bytes != ((void*)0)) {
        *out_free_bytes = free_sectors * fs->ssize;
    }
}
