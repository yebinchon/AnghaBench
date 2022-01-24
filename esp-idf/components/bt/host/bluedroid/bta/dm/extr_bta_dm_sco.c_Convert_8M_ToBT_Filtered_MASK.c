#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int UINT32 ;
typedef  int /*<<< orphan*/  SRC_TYPE ;
typedef  int INT32 ;
typedef  int /*<<< orphan*/  INT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int BTA_DM_PCM_OVERLAP_SIZE ; 
 int BTA_DM_PCM_SMPL_RATE_11025 ; 
 int BTA_DM_PCM_SMPL_RATE_22050 ; 
 int BTA_DM_PCM_SMPL_RATE_44100 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int SRC_CHANNELS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

INT32 FUNC5 (UINT8 *pSrc, void *pDst, UINT32 dwSrcSamples,
                                UINT32 dwSrcSps, INT32 *pLastCurPos, UINT8 *pOverlapArea)
{
    INT32             CurrentPos = *pLastCurPos;
    SRC_TYPE        *pIn, *pInEnd;
    SRC_TYPE        *pOv, *pOvEnd;
    INT16           *psBtOut = (INT16 *)pDst;
#if BTA_DM_SCO_DEBUG
    APPL_TRACE_DEBUG("Convert_8M_ToBT_Filtered,  CurrentPos %d\n", CurrentPos);
#endif
    FUNC4 (pOverlapArea + (BTA_DM_PCM_OVERLAP_SIZE * 2), pSrc, BTA_DM_PCM_OVERLAP_SIZE * 2);

    pOv    = (SRC_TYPE *)(pOverlapArea + BTA_DM_PCM_OVERLAP_SIZE);
    pOvEnd = (SRC_TYPE *)(pOverlapArea + (BTA_DM_PCM_OVERLAP_SIZE * 3));

    pIn     = (SRC_TYPE *)(pSrc + BTA_DM_PCM_OVERLAP_SIZE);
    pInEnd  = (SRC_TYPE *)(pSrc + (dwSrcSamples * SRC_CHANNELS * sizeof (SRC_TYPE)) - \
                           BTA_DM_PCM_OVERLAP_SIZE);

    if (dwSrcSps == BTA_DM_PCM_SMPL_RATE_44100) {
        FUNC3(pOv, pOvEnd);
        FUNC3(pIn, pInEnd);
    } else if (dwSrcSps == BTA_DM_PCM_SMPL_RATE_22050) {
        FUNC2(pOv, pOvEnd);
        FUNC2(pIn, pInEnd);
    } else if (dwSrcSps == BTA_DM_PCM_SMPL_RATE_11025) {
        FUNC1(pOv, pOvEnd);
        FUNC1(pIn, pInEnd);
    }

    FUNC4 (pOverlapArea, pSrc + (dwSrcSamples * SRC_CHANNELS * sizeof (SRC_TYPE)) - \
            (BTA_DM_PCM_OVERLAP_SIZE * 2), BTA_DM_PCM_OVERLAP_SIZE * 2);

    *pLastCurPos = CurrentPos;

    return (psBtOut - (INT16 *)pDst);
}