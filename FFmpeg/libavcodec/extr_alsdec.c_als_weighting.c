
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 scalar_t__ FF_ARRAY_ELEMS (int*) ;
 int av_clip (scalar_t__,int ,scalar_t__) ;
 scalar_t__ decode_rice (int *,int) ;
 int* mcc_weightings ;

__attribute__((used)) static inline int als_weighting(GetBitContext *gb, int k, int off)
{
    int idx = av_clip(decode_rice(gb, k) + off,
                      0, FF_ARRAY_ELEMS(mcc_weightings) - 1);
    return mcc_weightings[idx];
}
