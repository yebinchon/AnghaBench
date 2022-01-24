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
typedef  int U32 ;
typedef  int BYTE ;

/* Variables and functions */
 int FUNC0 (int const) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int*,size_t,int const*,size_t) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int HUFv07_TABLELOG_ABSOLUTEMAX ; 
 int /*<<< orphan*/  corruption_detected ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int) ; 
 int /*<<< orphan*/  srcSize_wrong ; 

size_t FUNC5(BYTE* huffWeight, size_t hwSize, U32* rankStats,
                     U32* nbSymbolsPtr, U32* tableLogPtr,
                     const void* src, size_t srcSize)
{
    U32 weightTotal;
    const BYTE* ip = (const BYTE*) src;
    size_t iSize;
    size_t oSize;

    if (!srcSize) return FUNC1(srcSize_wrong);
    iSize = ip[0];
    //memset(huffWeight, 0, hwSize);   /* is not necessary, even though some analyzer complain ... */

    if (iSize >= 128)  { /* special header */
        if (iSize >= (242)) {  /* RLE */
            static U32 l[14] = { 1, 2, 3, 4, 7, 8, 15, 16, 31, 32, 63, 64, 127, 128 };
            oSize = l[iSize-242];
            FUNC4(huffWeight, 1, hwSize);
            iSize = 0;
        }
        else {   /* Incompressible */
            oSize = iSize - 127;
            iSize = ((oSize+1)/2);
            if (iSize+1 > srcSize) return FUNC1(srcSize_wrong);
            if (oSize >= hwSize) return FUNC1(corruption_detected);
            ip += 1;
            {   U32 n;
                for (n=0; n<oSize; n+=2) {
                    huffWeight[n]   = ip[n/2] >> 4;
                    huffWeight[n+1] = ip[n/2] & 15;
    }   }   }   }
    else  {   /* header compressed with FSE (normal case) */
        if (iSize+1 > srcSize) return FUNC1(srcSize_wrong);
        oSize = FUNC2(huffWeight, hwSize-1, ip+1, iSize);   /* max (hwSize-1) values decoded, as last one is implied */
        if (FUNC3(oSize)) return oSize;
    }

    /* collect weight stats */
    FUNC4(rankStats, 0, (HUFv07_TABLELOG_ABSOLUTEMAX + 1) * sizeof(U32));
    weightTotal = 0;
    {   U32 n; for (n=0; n<oSize; n++) {
            if (huffWeight[n] >= HUFv07_TABLELOG_ABSOLUTEMAX) return FUNC1(corruption_detected);
            rankStats[huffWeight[n]]++;
            weightTotal += (1 << huffWeight[n]) >> 1;
    }   }
    if (weightTotal == 0) return FUNC1(corruption_detected);

    /* get last non-null symbol weight (implied, total must be 2^n) */
    {   U32 const tableLog = FUNC0(weightTotal) + 1;
        if (tableLog > HUFv07_TABLELOG_ABSOLUTEMAX) return FUNC1(corruption_detected);
        *tableLogPtr = tableLog;
        /* determine last weight */
        {   U32 const total = 1 << tableLog;
            U32 const rest = total - weightTotal;
            U32 const verif = 1 << FUNC0(rest);
            U32 const lastWeight = FUNC0(rest) + 1;
            if (verif != rest) return FUNC1(corruption_detected);    /* last value must be a clean power of 2 */
            huffWeight[oSize] = (BYTE)lastWeight;
            rankStats[lastWeight]++;
    }   }

    /* check tree construction validity */
    if ((rankStats[1] < 2) || (rankStats[1] & 1)) return FUNC1(corruption_detected);   /* by construction : at least 2 elts of rank 1, must be even */

    /* results */
    *nbSymbolsPtr = (U32)(oSize+1);
    return iSize+1;
}