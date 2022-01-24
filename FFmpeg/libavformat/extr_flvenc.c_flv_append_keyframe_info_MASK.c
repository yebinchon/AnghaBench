#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_6__ {int /*<<< orphan*/  filepositions_count; TYPE_1__* filepositions; TYPE_1__* head_filepositions; } ;
struct TYPE_5__ {double keyframe_timestamp; struct TYPE_5__* next; int /*<<< orphan*/  keyframe_position; } ;
typedef  TYPE_1__ FLVFileposition ;
typedef  TYPE_2__ FLVContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, FLVContext *flv, double ts, int64_t pos)
{
    FLVFileposition *position = FUNC2(sizeof(FLVFileposition));

    if (!position) {
        FUNC1(s, AV_LOG_WARNING, "no mem for add keyframe index!\n");
        return FUNC0(ENOMEM);
    }

    position->keyframe_timestamp = ts;
    position->keyframe_position = pos;

    if (!flv->filepositions_count) {
        flv->filepositions = position;
        flv->head_filepositions = flv->filepositions;
        position->next = NULL;
    } else {
        flv->filepositions->next = position;
        position->next = NULL;
        flv->filepositions = flv->filepositions->next;
    }

    flv->filepositions_count++;

    return 0;
}