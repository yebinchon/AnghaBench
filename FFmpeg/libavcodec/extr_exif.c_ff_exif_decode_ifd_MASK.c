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
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (void*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 

int FUNC4(void *logctx, GetByteContext *gbytes,
                       int le, int depth, AVDictionary **metadata)
{
    int i, ret;
    int entries;

    entries = FUNC3(gbytes, le);

    if (FUNC0(gbytes) < entries * 12) {
        return AVERROR_INVALIDDATA;
    }

    for (i = 0; i < entries; i++) {
        if ((ret = FUNC1(logctx, gbytes, le, depth, metadata)) < 0) {
            return ret;
        }
    }

    // return next IDF offset or 0x000000000 or a value < 0 for failure
    return FUNC2(gbytes, le);
}