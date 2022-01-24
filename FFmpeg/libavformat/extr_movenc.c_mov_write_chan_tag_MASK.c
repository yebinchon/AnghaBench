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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_5__ {scalar_t__ multichannel_as_mono; TYPE_1__* par; } ;
struct TYPE_4__ {int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  codec_id; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s, AVIOContext *pb, MOVTrack *track)
{
    uint32_t layout_tag, bitmap;
    int64_t pos = FUNC1(pb);

    layout_tag = FUNC5(track->par->codec_id,
                                               track->par->channel_layout,
                                               &bitmap);
    if (!layout_tag) {
        FUNC0(s, AV_LOG_WARNING, "not writing 'chan' tag due to "
               "lack of channel information\n");
        return 0;
    }

    if (track->multichannel_as_mono)
        return 0;

    FUNC4(pb, 0);           // Size
    FUNC6(pb, "chan");   // Type
    FUNC2(pb, 0);             // Version
    FUNC3(pb, 0);           // Flags
    FUNC4(pb, layout_tag);  // mChannelLayoutTag
    FUNC4(pb, bitmap);      // mChannelBitmap
    FUNC4(pb, 0);           // mNumberChannelDescriptions

    return FUNC7(pb, pos);
}