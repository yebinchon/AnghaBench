
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ UINT32 ;
typedef int DWORD ;


 int DWORD_BITS_SHIFT ;
 scalar_t__ multiprecision_dword_bits (int ) ;
 int multiprecision_most_signdwords (int *,int ) ;

UINT32 multiprecision_most_signbits(DWORD *a, uint32_t keyLength)
{
    int aMostSignDWORDs;

    aMostSignDWORDs = multiprecision_most_signdwords(a, keyLength);
    if (aMostSignDWORDs == 0) {
        return 0;
    }

    return (((aMostSignDWORDs - 1) << DWORD_BITS_SHIFT) +
            multiprecision_dword_bits(a[aMostSignDWORDs - 1]) );
}
