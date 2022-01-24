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
struct TYPE_2__ {int /*<<< orphan*/  source_track_id; int /*<<< orphan*/  source_package_uid; int /*<<< orphan*/  source_package_ul; void* start_position; void* duration; } ;
typedef  TYPE_1__ MXFStructuralComponent ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(void *arg, AVIOContext *pb, int tag, int size, UID uid, int64_t klv_offset)
{
    MXFStructuralComponent *source_clip = arg;
    switch(tag) {
    case 0x0202:
        source_clip->duration = FUNC1(pb);
        break;
    case 0x1201:
        source_clip->start_position = FUNC1(pb);
        break;
    case 0x1101:
        /* UMID, only get last 16 bytes */
        FUNC2(pb, source_clip->source_package_ul, 16);
        FUNC2(pb, source_clip->source_package_uid, 16);
        break;
    case 0x1102:
        source_clip->source_track_id = FUNC0(pb);
        break;
    }
    return 0;
}