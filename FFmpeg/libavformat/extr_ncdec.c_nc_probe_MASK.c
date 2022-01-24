#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int buf_size; scalar_t__ buf; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_MAX ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ NC_VIDEO_FLAG ; 

__attribute__((used)) static int FUNC2(const AVProbeData *probe_packet)
{
    int size;

    if (FUNC0(probe_packet->buf) != NC_VIDEO_FLAG)
        return 0;

    size = FUNC1(probe_packet->buf + 5);

    if (size + 20 > probe_packet->buf_size)
        return AVPROBE_SCORE_MAX/4;

    if (FUNC0(probe_packet->buf+16+size) == NC_VIDEO_FLAG)
        return AVPROBE_SCORE_MAX;

    return 0;
}