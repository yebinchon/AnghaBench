#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  write_out_ptr; } ;
struct TYPE_7__ {TYPE_2__ mms; } ;
typedef  TYPE_1__ MMSTContext ;
typedef  TYPE_2__ MMSContext ;

/* Variables and functions */
 int /*<<< orphan*/  CS_PKT_MEDIA_HEADER_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(MMSTContext *mmst)
{
    MMSContext *mms = &mmst->mms;
    FUNC3(mmst, CS_PKT_MEDIA_HEADER_REQUEST);
    FUNC1(mms, 1, 0);
    FUNC0(&mms->write_out_ptr, 0);
    FUNC0(&mms->write_out_ptr, 0x00800000);
    FUNC0(&mms->write_out_ptr, 0xffffffff);
    FUNC0(&mms->write_out_ptr, 0);
    FUNC0(&mms->write_out_ptr, 0);
    FUNC0(&mms->write_out_ptr, 0);

    // the media preroll value in milliseconds?
    FUNC0(&mms->write_out_ptr, 0);
    FUNC0(&mms->write_out_ptr, 0x40AC2000);
    FUNC0(&mms->write_out_ptr, 2);
    FUNC0(&mms->write_out_ptr, 0);

    return FUNC2(mmst);
}