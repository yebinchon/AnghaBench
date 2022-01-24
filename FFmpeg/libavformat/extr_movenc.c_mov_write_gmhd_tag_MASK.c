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
struct TYPE_6__ {scalar_t__ tag; TYPE_1__* par; } ;
struct TYPE_5__ {scalar_t__ codec_tag; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVIOContext *pb, MOVTrack *track)
{
    int64_t pos = FUNC1(pb);
    FUNC3(pb, 0);      /* size */
    FUNC4(pb, "gmhd");
    FUNC3(pb, 0x18);   /* gmin size */
    FUNC4(pb, "gmin");/* generic media info */
    FUNC3(pb, 0);      /* version & flags */
    FUNC2(pb, 0x40);   /* graphics mode = */
    FUNC2(pb, 0x8000); /* opColor (r?) */
    FUNC2(pb, 0x8000); /* opColor (g?) */
    FUNC2(pb, 0x8000); /* opColor (b?) */
    FUNC2(pb, 0);      /* balance */
    FUNC2(pb, 0);      /* reserved */

    /*
     * This special text atom is required for
     * Apple Quicktime chapters. The contents
     * don't appear to be documented, so the
     * bytes are copied verbatim.
     */
    if (track->tag != FUNC0('c','6','0','8')) {
    FUNC3(pb, 0x2C);   /* size */
    FUNC4(pb, "text");
    FUNC2(pb, 0x01);
    FUNC3(pb, 0x00);
    FUNC3(pb, 0x00);
    FUNC3(pb, 0x00);
    FUNC3(pb, 0x01);
    FUNC3(pb, 0x00);
    FUNC3(pb, 0x00);
    FUNC3(pb, 0x00);
    FUNC3(pb, 0x00004000);
    FUNC2(pb, 0x0000);
    }

    if (track->par->codec_tag == FUNC0('t','m','c','d')) {
        int64_t tmcd_pos = FUNC1(pb);
        FUNC3(pb, 0); /* size */
        FUNC4(pb, "tmcd");
        FUNC5(pb, track);
        FUNC6(pb, tmcd_pos);
    } else if (track->par->codec_tag == FUNC0('g','p','m','d')) {
        int64_t gpmd_pos = FUNC1(pb);
        FUNC3(pb, 0); /* size */
        FUNC4(pb, "gpmd");
        FUNC3(pb, 0); /* version */
        FUNC6(pb, gpmd_pos);
    }
    return FUNC6(pb, pos);
}