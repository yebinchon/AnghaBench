#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  p; } ;
typedef  TYPE_1__ uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ int32_t ;
typedef  TYPE_1__ HufDec ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  ENOMEM ; 
 int HUF_DECSIZE ; 
 scalar_t__ HUF_ENCSIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (TYPE_1__*,scalar_t__,scalar_t__,TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(GetByteContext *gb,
                          uint16_t *dst, int dst_size)
{
    int32_t src_size, im, iM;
    uint32_t nBits;
    uint64_t *freq;
    HufDec *hdec;
    int ret, i;

    src_size = FUNC5(gb);
    im       = FUNC5(gb);
    iM       = FUNC5(gb);
    FUNC6(gb, 4);
    nBits = FUNC5(gb);
    if (im < 0 || im >= HUF_ENCSIZE ||
        iM < 0 || iM >= HUF_ENCSIZE ||
        src_size < 0)
        return AVERROR_INVALIDDATA;

    FUNC6(gb, 4);

    freq = FUNC3(HUF_ENCSIZE, sizeof(*freq));
    hdec = FUNC3(HUF_DECSIZE, sizeof(*hdec));
    if (!freq || !hdec) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    if ((ret = FUNC9(gb, im, iM, freq)) < 0)
        goto fail;

    if (nBits > 8 * FUNC4(gb)) {
        ret = AVERROR_INVALIDDATA;
        goto fail;
    }

    if ((ret = FUNC7(freq, im, iM, hdec)) < 0)
        goto fail;
    ret = FUNC8(freq, hdec, gb, nBits, iM, dst_size, dst);

fail:
    for (i = 0; i < HUF_DECSIZE; i++)
        if (hdec)
            FUNC2(&hdec[i].p);

    FUNC1(freq);
    FUNC1(hdec);

    return ret;
}