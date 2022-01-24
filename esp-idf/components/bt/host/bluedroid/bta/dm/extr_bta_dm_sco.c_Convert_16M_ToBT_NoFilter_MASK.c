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
typedef  int UINT32 ;
typedef  int INT32 ;
typedef  int /*<<< orphan*/  INT16 ;

/* Variables and functions */

INT32 FUNC0 (void *pSrc, void *pDst, UINT32 dwSrcSamples, UINT32 dwSrcSps)
{
    INT32             CurrentPos;
    INT16           *psSrc = (INT16 *)pSrc;
    INT16           *psDst = (INT16 *)pDst;

    //      start at dwSpsSrc / 2, decrement by 8000
    //
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