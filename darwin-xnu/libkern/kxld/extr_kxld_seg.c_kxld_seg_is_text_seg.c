
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_4__ {int segname; } ;
typedef TYPE_1__ KXLDSeg ;


 int FALSE ;
 int SEG_TEXT ;
 int check (TYPE_1__ const*) ;
 int strncmp (int ,int ,int) ;

boolean_t
kxld_seg_is_text_seg(const KXLDSeg *seg)
{
    boolean_t result = FALSE;

    check(seg);
    result = !strncmp(seg->segname, SEG_TEXT, sizeof(seg->segname));

    return result;
}
