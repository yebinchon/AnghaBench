
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;
typedef enum TxfmType { ____Placeholder_TxfmType } TxfmType ;
typedef enum TxfmMode { ____Placeholder_TxfmMode } TxfmMode ;


 int AV_COPY32 (int*,int const*) ;
 int AV_ZERO32 (int*) ;
 int*** ff_vp9_scans ;

__attribute__((used)) static int copy_subcoefs(int16_t *out, const int16_t *in, enum TxfmMode tx,
                         enum TxfmType txtp, int sz, int sub, int bit_depth)
{







    int n;
    const int16_t *scan = ff_vp9_scans[tx][txtp];
    int eob;

    for (n = 0; n < sz * sz; n++) {
        int rc = scan[n], rcx = rc % sz, rcy = rc / sz;


        if (rcx >= sub || rcy >= sub)
            break;


        if (bit_depth == 8) {
            out[rc] = in[rc];
        } else {
            AV_COPY32(&out[rc * 2], &in[rc * 2]);
        }
    }

    eob = n;

    for (; n < sz * sz; n++) {
        int rc = scan[n];


        if (bit_depth == 8) {
            out[rc] = 0;
        } else {
            AV_ZERO32(&out[rc * 2]);
        }
    }

    return eob;
}
