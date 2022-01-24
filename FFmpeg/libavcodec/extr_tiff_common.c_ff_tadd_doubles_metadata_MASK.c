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
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_DICT_DONT_STRDUP_VAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int,char const*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char const*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

int FUNC8(int count, const char *name, const char *sep,
                             GetByteContext *gb, int le, AVDictionary **metadata)
{
    AVBPrint bp;
    char *ap;
    int i;

    if (count >= INT_MAX / sizeof(int64_t) || count <= 0)
        return AVERROR_INVALIDDATA;
    if (FUNC6(gb) < count * sizeof(int64_t))
        return AVERROR_INVALIDDATA;

    FUNC3(&bp, 10 * count, 100 * count);

    for (i = 0; i < count; i++) {
        FUNC4(&bp, "%s%.15g", FUNC1(count, sep, i, 4), FUNC7(gb, le));
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