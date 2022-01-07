
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int INT32 ;
typedef int INT16 ;



INT32 Convert_16M_ToBT_NoFilter (void *pSrc, void *pDst, UINT32 dwSrcSamples, UINT32 dwSrcSps)
{
    INT32 CurrentPos;
    INT16 *psSrc = (INT16 *)pSrc;
    INT16 *psDst = (INT16 *)pDst;



    CurrentPos = (dwSrcSps >> 1);

    while (dwSrcSamples--) {
        CurrentPos -= 8000;

        if (CurrentPos >= 0) {
            psSrc++;
        } else {
            *psDst++ = *psSrc++;

            CurrentPos += dwSrcSps;
        }
    }

    return (psDst - (INT16 *)pDst);
}
