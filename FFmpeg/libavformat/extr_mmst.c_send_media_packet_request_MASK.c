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
struct TYPE_7__ {int packet_id; TYPE_2__ mms; } ;
typedef  TYPE_1__ MMSTContext ;
typedef  TYPE_2__ MMSContext ;

/* Variables and functions */
 int /*<<< orphan*/  CS_PKT_START_FROM_PKT_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(MMSTContext *mmst)
{
    MMSContext *mms = &mmst->mms;
    FUNC5(mmst, CS_PKT_START_FROM_PKT_ID);
    FUNC3(mms, 1, 0x0001FFFF);
    FUNC2(&mms->write_out_ptr, 0);          // seek timestamp
    FUNC1(&mms->write_out_ptr, 0xffffffff); // unknown
    FUNC1(&mms->write_out_ptr, 0xffffffff); // packet offset
    FUNC0(&mms->write_out_ptr, 0xff);       // max stream time limit
    FUNC0(&mms->write_out_ptr, 0xff);       // max stream time limit
    FUNC0(&mms->write_out_ptr, 0xff);       // max stream time limit
    FUNC0(&mms->write_out_ptr, 0x00);       // stream time limit flag

    mmst->packet_id++;                                     // new packet_id
    FUNC1(&mms->write_out_ptr, mmst->packet_id);
    return FUNC4(mmst);
}