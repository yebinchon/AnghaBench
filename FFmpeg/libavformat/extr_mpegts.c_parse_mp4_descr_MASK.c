#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_8__ {int /*<<< orphan*/  pb; int /*<<< orphan*/  level; int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ MP4DescrParseContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ MAX_LEVEL ; 
#define  MP4DecConfigDescrTag 132 
#define  MP4ESDescrTag 131 
#define  MP4IODescrTag 130 
#define  MP4ODescrTag 129 
#define  MP4SLDescrTag 128 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (TYPE_1__*,scalar_t__,int) ; 
 int FUNC4 (TYPE_1__*,scalar_t__,int) ; 
 int FUNC5 (TYPE_1__*,scalar_t__,int) ; 
 int FUNC6 (TYPE_1__*,scalar_t__,int) ; 
 int FUNC7 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__*,int*) ; 

__attribute__((used)) static int FUNC9(MP4DescrParseContext *d, int64_t off, int len,
                           int target_tag)
{
    int tag;
    int len1 = FUNC2(d->s, &d->pb, &tag);
    int ret = 0;

    FUNC8(&d->pb, &off, &len);
    if (len < 0 || len1 > len || len1 <= 0) {
        FUNC0(d->s, AV_LOG_ERROR,
               "Tag %x length violation new length %d bytes remaining %d\n",
               tag, len1, len);
        return AVERROR_INVALIDDATA;
    }

    if (d->level++ >= MAX_LEVEL) {
        FUNC0(d->s, AV_LOG_ERROR, "Maximum MP4 descriptor level exceeded\n");
        ret = AVERROR_INVALIDDATA;
        goto done;
    }

    if (target_tag && tag != target_tag) {
        FUNC0(d->s, AV_LOG_ERROR, "Found tag %x expected %x\n", tag,
               target_tag);
        ret = AVERROR_INVALIDDATA;
        goto done;
    }

    switch (tag) {
    case MP4IODescrTag:
        ret = FUNC5(d, off, len1);
        break;
    case MP4ODescrTag:
        ret = FUNC6(d, off, len1);
        break;
    case MP4ESDescrTag:
        ret = FUNC4(d, off, len1);
        break;
    case MP4DecConfigDescrTag:
        ret = FUNC3(d, off, len1);
        break;
    case MP4SLDescrTag:
        ret = FUNC7(d, off, len1);
        break;
    }


done:
    d->level--;
    FUNC1(&d->pb, off + len1, SEEK_SET);
    return ret;
}