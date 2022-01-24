#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; } ;
typedef  TYPE_1__ HLSContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int HLS_SECOND_LEVEL_SEGMENT_DURATION ; 
 int HLS_SECOND_LEVEL_SEGMENT_INDEX ; 
 int HLS_SECOND_LEVEL_SEGMENT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(HLSContext *hls)
{
    int ret = 0;

    if (hls->flags & HLS_SECOND_LEVEL_SEGMENT_DURATION) {
        FUNC1(hls, AV_LOG_ERROR,
               "second_level_segment_duration hls_flag requires strftime to be true\n");
        ret = FUNC0(EINVAL);
    }
    if (hls->flags & HLS_SECOND_LEVEL_SEGMENT_SIZE) {
        FUNC1(hls, AV_LOG_ERROR,
               "second_level_segment_size hls_flag requires strfime to be true\n");
        ret = FUNC0(EINVAL);
    }
    if (hls->flags & HLS_SECOND_LEVEL_SEGMENT_INDEX) {
        FUNC1(hls, AV_LOG_ERROR,
               "second_level_segment_index hls_flag requires strftime to be true\n");
        ret = FUNC0(EINVAL);
    }

    return ret;
}