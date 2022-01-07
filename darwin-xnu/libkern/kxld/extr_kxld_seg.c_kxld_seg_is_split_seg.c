
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;
typedef int KXLDSeg ;


 int FALSE ;
 int TRUE ;
 int check (int const*) ;
 scalar_t__ isSplitKext ;
 scalar_t__ kxld_seg_is_data_const_seg (int const*) ;
 scalar_t__ kxld_seg_is_data_seg (int const*) ;
 scalar_t__ kxld_seg_is_linkedit_seg (int const*) ;
 scalar_t__ kxld_seg_is_llvm_cov_seg (int const*) ;
 scalar_t__ kxld_seg_is_text_exec_seg (int const*) ;

boolean_t
kxld_seg_is_split_seg(const KXLDSeg *seg)
{
    boolean_t result = FALSE;

    check(seg);
    if (isSplitKext) {
        if (kxld_seg_is_data_seg(seg) || kxld_seg_is_linkedit_seg(seg) ||
            kxld_seg_is_text_exec_seg(seg) || kxld_seg_is_data_const_seg(seg) ||
            kxld_seg_is_llvm_cov_seg(seg)) {
            result = TRUE;
        }
    }

    return result;
}
