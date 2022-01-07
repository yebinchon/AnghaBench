
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ label; scalar_t__ type; } ;
typedef TYPE_1__ reloc_info_t ;



__attribute__((used)) static int reloc_sort_func(const void* p_lhs, const void* p_rhs)
{
    const reloc_info_t lhs = *(const reloc_info_t*) p_lhs;
    const reloc_info_t rhs = *(const reloc_info_t*) p_rhs;
    if (lhs.label < rhs.label) {
        return -1;
    } else if (lhs.label > rhs.label) {
        return 1;
    }

    if (lhs.type < rhs.type) {
        return -1;
    } else if (lhs.type > rhs.type) {
        return 1;
    }


    return 0;
}
