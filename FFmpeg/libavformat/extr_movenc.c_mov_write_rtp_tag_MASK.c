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
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_3__ {int max_packet_size; int timescale; } ;
typedef  TYPE_1__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(AVIOContext *pb, MOVTrack *track)
{
    int64_t pos = FUNC0(pb);
    FUNC2(pb, 0); /* size */
    FUNC3(pb, "rtp ");
    FUNC2(pb, 0); /* Reserved */
    FUNC1(pb, 0); /* Reserved */
    FUNC1(pb, 1); /* Data-reference index */

    FUNC1(pb, 1); /* Hint track version */
    FUNC1(pb, 1); /* Highest compatible version */
    FUNC2(pb, track->max_packet_size); /* Max packet size */

    FUNC2(pb, 12); /* size */
    FUNC3(pb, "tims");
    FUNC2(pb, track->timescale);

    return FUNC4(pb, pos);
}