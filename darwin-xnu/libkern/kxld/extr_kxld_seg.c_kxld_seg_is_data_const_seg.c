
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_4__ {int segname; } ;
typedef TYPE_1__ KXLDSeg ;


 int FALSE ;
 int check (TYPE_1__ const*) ;
 int strncmp (int ,char*,int) ;

boolean_t
kxld_seg_is_data_const_seg(const KXLDSeg *seg)
{
    boolean_t result = FALSE;

    check(seg);
    result = !strncmp(seg->segname, "__DATA_CONST", sizeof(seg->segname));

    return result;
}
