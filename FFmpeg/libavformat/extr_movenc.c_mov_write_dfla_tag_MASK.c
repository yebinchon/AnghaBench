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
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_5__ {TYPE_1__* par; } ;
struct TYPE_4__ {scalar_t__ extradata_size; int /*<<< orphan*/  extradata; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FLAC_METADATA_TYPE_STREAMINFO ; 
 scalar_t__ FLAC_STREAMINFO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVIOContext *pb, MOVTrack *track)
{
    int64_t pos = FUNC0(pb);
    FUNC3(pb, 0);
    FUNC5(pb, "dfLa");
    FUNC1(pb, 0); /* version */
    FUNC2(pb, 0); /* flags */

    /* Expect the encoder to pass a METADATA_BLOCK_TYPE_STREAMINFO. */
    if (track->par->extradata_size != FLAC_STREAMINFO_SIZE)
        return AVERROR_INVALIDDATA;

    /* TODO: Write other METADATA_BLOCK_TYPEs if the encoder makes them available. */
    FUNC1(pb, 1 << 7 | FLAC_METADATA_TYPE_STREAMINFO); /* LastMetadataBlockFlag << 7 | BlockType */
    FUNC2(pb, track->par->extradata_size); /* Length */
    FUNC4(pb, track->par->extradata, track->par->extradata_size); /* BlockData[Length] */

    return FUNC6(pb, pos);
}