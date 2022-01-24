#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  write_out_ptr; int /*<<< orphan*/  out_buffer; } ;
struct TYPE_4__ {int /*<<< orphan*/  outgoing_packet_seq; TYPE_2__ mms; } ;
typedef  TYPE_1__ MMSTContext ;
typedef  TYPE_2__ MMSContext ;
typedef  int MMSCSPacketType ;

/* Variables and functions */
 int FUNC0 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(MMSTContext *mmst, MMSCSPacketType packet_type)
{
    MMSContext *mms    = &mmst->mms;
    mms->write_out_ptr = mms->out_buffer;

    FUNC2(&mms->write_out_ptr, 1); // start sequence
    FUNC2(&mms->write_out_ptr, 0xb00bface);
    FUNC2(&mms->write_out_ptr, 0); // Length starts from after the protocol type bytes
    FUNC2(&mms->write_out_ptr, FUNC0('M','M','S',' '));
    FUNC2(&mms->write_out_ptr, 0);
    FUNC2(&mms->write_out_ptr, mmst->outgoing_packet_seq++);
    FUNC3(&mms->write_out_ptr, 0); // timestamp
    FUNC2(&mms->write_out_ptr, 0);
    FUNC1(&mms->write_out_ptr, packet_type);
    FUNC1(&mms->write_out_ptr, 3); // direction to server
}