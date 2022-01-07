
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FTW_DEPTH ;
 int FTW_MOUNT ;
 int FTW_PHYS ;
 int nftw (char const* const,int *,int ,int) ;
 int rm_recursive_callback ;

bool rm_recursive(const char* const path) {




    int rv = nftw(path, &rm_recursive_callback, 0, FTW_DEPTH | FTW_MOUNT | FTW_PHYS);

    return rv == 0;
}
