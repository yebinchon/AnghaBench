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
typedef  int /*<<< orphan*/  uuid ;
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_5__ {TYPE_1__* cluster; scalar_t__ end_pts; scalar_t__ frag_start; scalar_t__ start_dts; } ;
struct TYPE_4__ {scalar_t__ cts; scalar_t__ dts; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVIOContext *pb, MOVTrack *track)
{
    int64_t pos = FUNC0(pb);
    static const uint8_t uuid[] = {
        0x6d, 0x1d, 0x9b, 0x05, 0x42, 0xd5, 0x44, 0xe6,
        0x80, 0xe2, 0x14, 0x1d, 0xaf, 0xf7, 0x57, 0xb2
    };

    FUNC3(pb, 0); /* size placeholder */
    FUNC6(pb, "uuid");
    FUNC5(pb, uuid, sizeof(uuid));
    FUNC1(pb, 1);
    FUNC2(pb, 0);
    FUNC4(pb, track->start_dts + track->frag_start +
                  track->cluster[0].cts);
    FUNC4(pb, track->end_pts -
                  (track->cluster[0].dts + track->cluster[0].cts));

    return FUNC7(pb, pos);
}