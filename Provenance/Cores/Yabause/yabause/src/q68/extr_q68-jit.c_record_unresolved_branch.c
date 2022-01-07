
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_3__ {scalar_t__ m68k_target; scalar_t__ native_offset; } ;


 int lenof (TYPE_1__*) ;
 TYPE_1__* unres_branches ;

__attribute__((used)) static void record_unresolved_branch(uint32_t m68k_target,
                                     uint32_t native_offset)
{
    int oldest = 0;
    int i;
    for (i = 0; i < lenof(unres_branches); i++) {
        if (unres_branches[i].m68k_target == 0) {
            oldest = i;
            break;
        } else if (unres_branches[i].native_offset
                   < unres_branches[oldest].native_offset) {
            oldest = i;
        }
    }
    unres_branches[oldest].m68k_target = m68k_target;
    unres_branches[oldest].native_offset = native_offset;
}
