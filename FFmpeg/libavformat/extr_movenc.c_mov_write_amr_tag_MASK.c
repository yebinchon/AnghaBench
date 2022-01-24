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
struct TYPE_3__ {scalar_t__ mode; } ;
typedef  TYPE_1__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 scalar_t__ MODE_MOV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC4(AVIOContext *pb, MOVTrack *track)
{
    FUNC2(pb, 0x11); /* size */
    if (track->mode == MODE_MOV) FUNC3(pb, "samr");
    else                         FUNC3(pb, "damr");
    FUNC3(pb, "FFMP");
    FUNC0(pb, 0); /* decoder version */

    FUNC1(pb, 0x81FF); /* Mode set (all modes for AMR_NB) */
    FUNC0(pb, 0x00); /* Mode change period (no restriction) */
    FUNC0(pb, 0x01); /* Frames per sample */
    return 0x11;
}