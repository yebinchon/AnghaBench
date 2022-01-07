
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NMSEDEC_BITS ;
 int NMSEDEC_FRACBITS ;
 int* lut_nmsedec_ref ;
 int* lut_nmsedec_ref0 ;

__attribute__((used)) static int getnmsedec_ref(int x, int bpno)
{
    if (bpno > NMSEDEC_FRACBITS)
        return lut_nmsedec_ref[(x >> (bpno - NMSEDEC_FRACBITS)) & ((1 << NMSEDEC_BITS) - 1)];
    return lut_nmsedec_ref0[x & ((1 << NMSEDEC_BITS) - 1)];
}
