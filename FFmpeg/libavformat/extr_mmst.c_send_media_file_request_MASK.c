#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  write_out_ptr; } ;
struct TYPE_8__ {scalar_t__ path; TYPE_2__ mms; } ;
typedef  TYPE_1__ MMSTContext ;
typedef  TYPE_2__ MMSContext ;

/* Variables and functions */
 int /*<<< orphan*/  CS_PKT_MEDIA_FILE_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int) ; 
 int FUNC2 (TYPE_2__*,scalar_t__) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(MMSTContext *mmst)
{
    int ret;
    MMSContext *mms = &mmst->mms;
    FUNC4(mmst, CS_PKT_MEDIA_FILE_REQUEST);
    FUNC1(mms, 1, 0xffffffff);
    FUNC0(&mms->write_out_ptr, 0);
    FUNC0(&mms->write_out_ptr, 0);
    if ((ret = FUNC2(mms, mmst->path + 1)) < 0) // +1 for skip "/"
        return ret;

    return FUNC3(mmst);
}