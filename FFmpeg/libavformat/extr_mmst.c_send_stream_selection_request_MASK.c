#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int stream_num; int /*<<< orphan*/  write_out_ptr; TYPE_1__* streams; } ;
struct TYPE_8__ {TYPE_3__ mms; } ;
struct TYPE_7__ {int id; } ;
typedef  TYPE_2__ MMSTContext ;
typedef  TYPE_3__ MMSContext ;

/* Variables and functions */
 int /*<<< orphan*/  CS_PKT_STREAM_ID_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(MMSTContext *mmst)
{
    int i;
    MMSContext *mms = &mmst->mms;
    //  send the streams we want back...
    FUNC3(mmst, CS_PKT_STREAM_ID_REQUEST);
    FUNC1(&mms->write_out_ptr, mms->stream_num);         // stream nums
    for(i= 0; i<mms->stream_num; i++) {
        FUNC0(&mms->write_out_ptr, 0xffff);              // flags
        FUNC0(&mms->write_out_ptr, mms->streams[i].id);  // stream id
        FUNC0(&mms->write_out_ptr, 0);                   // selection
    }
    return FUNC2(mmst);
}