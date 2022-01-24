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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_3__ {int /*<<< orphan*/  tag; } ;
typedef  TYPE_1__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6(MOVTrack* track, AVIOContext *pb, uint8_t* kid)
{
    int64_t pos = FUNC0(pb);
    FUNC1(pb, 0); /* size */
    FUNC3(pb, "sinf");

    /* frma */
    FUNC1(pb, 12);    /* size */
    FUNC3(pb, "frma");
    FUNC2(pb, track->tag);

    /* schm */
    FUNC1(pb, 20);    /* size */
    FUNC3(pb, "schm");
    FUNC1(pb, 0); /* version & flags */
    FUNC3(pb, "cenc");    /* scheme type*/
    FUNC1(pb, 0x10000); /* scheme version */

    /* schi */
    FUNC4(pb, kid);

    return FUNC5(pb, pos);
}