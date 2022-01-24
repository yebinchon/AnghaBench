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
struct TYPE_2__ {int /*<<< orphan*/  essence_container_data_count; int /*<<< orphan*/  essence_container_data_refs; int /*<<< orphan*/  packages_count; int /*<<< orphan*/  packages_refs; int /*<<< orphan*/  fc; } ;
typedef  TYPE_1__ MXFContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void *arg, AVIOContext *pb, int tag, int size, UID uid, int64_t klv_offset)
{
    MXFContext *mxf = arg;
    switch (tag) {
    case 0x1901:
        if (mxf->packages_refs)
            FUNC1(mxf->fc, AV_LOG_VERBOSE, "Multiple packages_refs\n");
        FUNC0(mxf->packages_refs);
        return FUNC2(pb, &mxf->packages_refs, &mxf->packages_count);
    case 0x1902:
        FUNC0(mxf->essence_container_data_refs);
        return FUNC2(pb, &mxf->essence_container_data_refs, &mxf->essence_container_data_count);
    }
    return 0;
}