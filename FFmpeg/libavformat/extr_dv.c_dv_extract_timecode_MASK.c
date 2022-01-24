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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {TYPE_1__* sys; } ;
struct TYPE_4__ {int ltc_divisor; } ;
typedef  TYPE_2__ DVDemuxContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dv_timecode ; 

__attribute__((used)) static int FUNC3(DVDemuxContext* c, const uint8_t* frame, char *tc)
{
    const uint8_t *tc_pack;

    // For PAL systems, drop frame bit is replaced by an arbitrary
    // bit so its value should not be considered. Drop frame timecode
    // is only relevant for NTSC systems.
    int prevent_df = c->sys->ltc_divisor == 25 || c->sys->ltc_divisor == 50;

    tc_pack = FUNC2(frame, dv_timecode);
    if (!tc_pack)
        return 0;
    FUNC1(tc, FUNC0(tc_pack + 1), prevent_df);
    return 1;
}