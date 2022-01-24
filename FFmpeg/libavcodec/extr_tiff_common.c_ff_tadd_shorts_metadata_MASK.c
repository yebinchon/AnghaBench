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
typedef  int int16_t ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  AV_DICT_DONT_STRDUP_VAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int,char const*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char const*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 

int FUNC8(int count, const char *name, const char *sep,
                            GetByteContext *gb, int le, int is_signed, AVDictionary **metadata)
{
    AVBPrint bp;
    char *ap;
    int i;

    if (count >= INT_MAX / sizeof(int16_t) || count <= 0)
        return AVERROR_INVALIDDATA;
    if (FUNC6(gb) < count * sizeof(int16_t))
        return AVERROR_INVALIDDATA;

    FUNC3(&bp, 10 * count, AV_BPRINT_SIZE_UNLIMITED);

    for (i = 0; i < count; i++) {
        int v = is_signed ? (int16_t)FUNC7(gb, le) :  FUNC7(gb, le);
        FUNC4(&bp, "%s%5i", FUNC1(count, sep, i, 8), v);
    }

    if ((i = FUNC2(&bp, &ap))) {
        return i;
    }
    if (!ap) {
        return FUNC0(ENOMEM);
    }

    FUNC5(metadata, name, ap, AV_DICT_DONT_STRDUP_VAL);

    return 0;
}