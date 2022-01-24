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
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 scalar_t__ FUNC0 (int,char,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC3(AVIOContext *pb, int *cur_byte, int *result)
{
    static const char * const text[] = { "false", "true" };
    const char *p;
    int i;

    FUNC2(pb, cur_byte);
    for (i = 0; i < 2; i++) {
        p = text[i];
        if (*cur_byte != *p)
            continue;
        for (; *p; p++, FUNC1(pb, cur_byte))
            if (*cur_byte != *p)
                return AVERROR_INVALIDDATA;
        if (FUNC0(*cur_byte | 32, 'a', 'z'))
            return AVERROR_INVALIDDATA;
        *result = i;
        return 0;
    }
    return AVERROR_INVALIDDATA;
}