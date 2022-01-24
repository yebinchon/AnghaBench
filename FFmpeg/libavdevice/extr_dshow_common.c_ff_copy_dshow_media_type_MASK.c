#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/ * pbFormat; int /*<<< orphan*/ * pUnk; int /*<<< orphan*/  cbFormat; } ;
typedef  TYPE_1__ AM_MEDIA_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 long E_OUTOFMEMORY ; 
 long S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

long FUNC2(AM_MEDIA_TYPE *dst, const AM_MEDIA_TYPE *src)
{
    uint8_t *pbFormat = NULL;

    if (src->cbFormat) {
        pbFormat = FUNC0(src->cbFormat);
        if (!pbFormat)
            return E_OUTOFMEMORY;
        FUNC1(pbFormat, src->pbFormat, src->cbFormat);
    }

    *dst = *src;
    dst->pUnk = NULL;
    dst->pbFormat = pbFormat;

    return S_OK;
}