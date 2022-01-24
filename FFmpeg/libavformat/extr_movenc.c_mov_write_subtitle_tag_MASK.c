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
struct TYPE_6__ {TYPE_1__* par; int /*<<< orphan*/  tag; } ;
struct TYPE_5__ {scalar_t__ codec_id; scalar_t__ extradata_size; int /*<<< orphan*/  extradata; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_DVD_SUBTITLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVIOContext *pb, MOVTrack *track)
{
    int64_t pos = FUNC0(pb);
    FUNC2(pb, 0);    /* size */
    FUNC3(pb, track->tag); // store it byteswapped
    FUNC2(pb, 0);    /* Reserved */
    FUNC1(pb, 0);    /* Reserved */
    FUNC1(pb, 1);    /* Data-reference index */

    if (track->par->codec_id == AV_CODEC_ID_DVD_SUBTITLE)
        FUNC5(pb, track);
    else if (track->par->extradata_size)
        FUNC4(pb, track->par->extradata, track->par->extradata_size);

    return FUNC6(pb, pos);
}