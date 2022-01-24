#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVIOContext *pb, MOVTrack *track)
{
    int64_t pos = FUNC0(pb);
    const char *font = "Lucida Grande";
    FUNC3(pb, 0);                   /* size */
    FUNC5(pb, "tcmi");           /* timecode media information atom */
    FUNC3(pb, 0);                   /* version & flags */
    FUNC2(pb, 0);                   /* text font */
    FUNC2(pb, 0);                   /* text face */
    FUNC2(pb, 12);                  /* text size */
    FUNC2(pb, 0);                   /* (unknown, not in the QT specs...) */
    FUNC2(pb, 0x0000);              /* text color (red) */
    FUNC2(pb, 0x0000);              /* text color (green) */
    FUNC2(pb, 0x0000);              /* text color (blue) */
    FUNC2(pb, 0xffff);              /* background color (red) */
    FUNC2(pb, 0xffff);              /* background color (green) */
    FUNC2(pb, 0xffff);              /* background color (blue) */
    FUNC1(pb, FUNC6(font));          /* font len (part of the pascal string) */
    FUNC4(pb, font, FUNC6(font)); /* font name */
    return FUNC7(pb, pos);
}