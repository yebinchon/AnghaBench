#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  UID ;
struct TYPE_2__ {int local_tags_count; scalar_t__ local_tags; int /*<<< orphan*/  fc; } ;
typedef  TYPE_1__ MXFContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC7(void *arg, AVIOContext *pb, int tag, int size, UID uid, int64_t klv_offset)
{
    MXFContext *mxf = arg;
    int item_num = FUNC4(pb);
    int item_len = FUNC4(pb);

    if (item_len != 18) {
        FUNC6(pb, "Primer pack item length %d", item_len);
        return AVERROR_PATCHWELCOME;
    }
    if (item_num > 65536 || item_num < 0) {
        FUNC3(mxf->fc, AV_LOG_ERROR, "item_num %d is too large\n", item_num);
        return AVERROR_INVALIDDATA;
    }
    if (mxf->local_tags)
        FUNC3(mxf->fc, AV_LOG_VERBOSE, "Multiple primer packs\n");
    FUNC2(mxf->local_tags);
    mxf->local_tags_count = 0;
    mxf->local_tags = FUNC1(item_num, item_len);
    if (!mxf->local_tags)
        return FUNC0(ENOMEM);
    mxf->local_tags_count = item_num;
    FUNC5(pb, mxf->local_tags, item_num*item_len);
    return 0;
}