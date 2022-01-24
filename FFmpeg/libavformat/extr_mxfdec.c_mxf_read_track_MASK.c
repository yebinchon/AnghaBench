#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  UID ;
struct TYPE_3__ {void* den; void* num; } ;
struct TYPE_4__ {int /*<<< orphan*/  sequence_ref; TYPE_1__ edit_rate; int /*<<< orphan*/  name; int /*<<< orphan*/  track_number; void* track_id; } ;
typedef  TYPE_2__ MXFTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void *arg, AVIOContext *pb, int tag, int size, UID uid, int64_t klv_offset)
{
    MXFTrack *track = arg;
    switch(tag) {
    case 0x4801:
        track->track_id = FUNC0(pb);
        break;
    case 0x4804:
        FUNC1(pb, track->track_number, 4);
        break;
    case 0x4802:
        FUNC2(pb, size, &track->name);
        break;
    case 0x4b01:
        track->edit_rate.num = FUNC0(pb);
        track->edit_rate.den = FUNC0(pb);
        break;
    case 0x4803:
        FUNC1(pb, track->sequence_ref, 16);
        break;
    }
    return 0;
}