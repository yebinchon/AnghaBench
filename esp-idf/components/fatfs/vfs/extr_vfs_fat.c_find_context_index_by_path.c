
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base_path; } ;


 size_t FF_VOLUMES ;
 TYPE_1__** s_fat_ctxs ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static size_t find_context_index_by_path(const char* base_path)
{
    for(size_t i=0; i<FF_VOLUMES; i++) {
        if (s_fat_ctxs[i] && !strcmp(s_fat_ctxs[i]->base_path, base_path)) {
            return i;
        }
    }
    return FF_VOLUMES;
}
