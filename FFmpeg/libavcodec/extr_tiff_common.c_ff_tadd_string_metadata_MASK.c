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
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_DICT_DONT_STRDUP_VAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char const*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(int count, const char *name,
                            GetByteContext *gb, int le, AVDictionary **metadata)
{
    char *value;

    if (FUNC4(gb) < count || count < 0)
        return AVERROR_INVALIDDATA;

    value = FUNC2(count + 1);
    if (!value)
        return FUNC0(ENOMEM);

    FUNC3(gb, value, count);
    value[count] = 0;

    FUNC1(metadata, name, value, AV_DICT_DONT_STRDUP_VAL);
    return 0;
}