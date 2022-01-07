
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;
typedef int SRC_TYPE ;
typedef int INT32 ;
typedef int INT16 ;


 int BTA_DM_PCM_OVERLAP_SIZE ;
 int BTA_DM_PCM_SMPL_RATE_11025 ;
 int BTA_DM_PCM_SMPL_RATE_22050 ;
 int BTA_DM_PCM_SMPL_RATE_44100 ;
 int CONVERT_11025_TO_BLUETOOTH (int *,int *) ;
 int CONVERT_22050_TO_BLUETOOTH (int *,int *) ;
 int CONVERT_44100_TO_BLUETOOTH (int *,int *) ;
 int SRC_CHANNELS ;
 int memcpy (int *,int *,int) ;

INT32 Convert_16M_ToBT_Filtered (UINT8 *pSrc, void *pDst, UINT32 dwSrcSamples,
                                 UINT32 dwSrcSps, INT32 *pLastCurPos, UINT8 *pOverlapArea)
{
    INT32 CurrentPos = *pLastCurPos;
    SRC_TYPE *pIn, *pInEnd;
    SRC_TYPE *pOv, *pOvEnd;
    INT16 *psBtOut = (INT16 *)pDst;

    memcpy (pOverlapArea + (BTA_DM_PCM_OVERLAP_SIZE * 2), pSrc, BTA_DM_PCM_OVERLAP_SIZE * 2);

    pOv = (SRC_TYPE *)(pOverlapArea + BTA_DM_PCM_OVERLAP_SIZE);
    pOvEnd = (SRC_TYPE *)(pOverlapArea + (BTA_DM_PCM_OVERLAP_SIZE * 3));

    pIn = (SRC_TYPE *)(pSrc + BTA_DM_PCM_OVERLAP_SIZE);
    pInEnd = (SRC_TYPE *)(pSrc + (dwSrcSamples * SRC_CHANNELS * sizeof (SRC_TYPE)) - BTA_DM_PCM_OVERLAP_SIZE);

    if (dwSrcSps == BTA_DM_PCM_SMPL_RATE_44100) {
        CONVERT_44100_TO_BLUETOOTH(pOv, pOvEnd);
        CONVERT_44100_TO_BLUETOOTH(pIn, pInEnd);
    } else if (dwSrcSps == BTA_DM_PCM_SMPL_RATE_22050) {
        CONVERT_22050_TO_BLUETOOTH(pOv, pOvEnd);
        CONVERT_22050_TO_BLUETOOTH(pIn, pInEnd);
    } else if (dwSrcSps == BTA_DM_PCM_SMPL_RATE_11025) {
        CONVERT_11025_TO_BLUETOOTH(pOv, pOvEnd);
        CONVERT_11025_TO_BLUETOOTH(pIn, pInEnd);
    }

    memcpy (pOverlapArea, pSrc + (dwSrcSamples * SRC_CHANNELS * sizeof (SRC_TYPE)) - (BTA_DM_PCM_OVERLAP_SIZE * 2), BTA_DM_PCM_OVERLAP_SIZE * 2);


    *pLastCurPos = CurrentPos;

    return (psBtOut - (INT16 *)pDst);
}
