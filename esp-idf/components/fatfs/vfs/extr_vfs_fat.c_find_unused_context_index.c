
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t FF_VOLUMES ;
 int * s_fat_ctxs ;

__attribute__((used)) static size_t find_unused_context_index(void)
{
    for(size_t i=0; i<FF_VOLUMES; i++) {
        if (!s_fat_ctxs[i]) {
            return i;
        }
    }
    return FF_VOLUMES;
}
