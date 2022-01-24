#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_15__ {char* url; TYPE_2__** streams; int /*<<< orphan*/  pb; int /*<<< orphan*/  nb_streams; TYPE_4__* priv_data; } ;
struct TYPE_11__ {TYPE_3__* elem; } ;
struct TYPE_14__ {scalar_t__ bandwidth; int /*<<< orphan*/  is_live; TYPE_1__ tracks; int /*<<< orphan*/  duration; } ;
struct TYPE_13__ {scalar_t__ num; } ;
struct TYPE_12__ {int /*<<< orphan*/  metadata; } ;
typedef  TYPE_3__ MatroskaTrack ;
typedef  TYPE_4__ MatroskaDemuxContext ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  BANDWIDTH ; 
 int /*<<< orphan*/  DURATION ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FILENAME ; 
 int /*<<< orphan*/  INITIALIZATION_RANGE ; 
 int /*<<< orphan*/  TRACK_NUMBER ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int FUNC8 (TYPE_5__*) ; 
 char* FUNC9 (char*,char) ; 
 int FUNC10 (TYPE_5__*,scalar_t__) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s)
{
    char *buf;
    int ret = FUNC8(s);
    int64_t init_range;
    MatroskaTrack *tracks;
    MatroskaDemuxContext *matroska = s->priv_data;
    if (ret) {
        FUNC5(s, AV_LOG_ERROR, "Failed to read file headers\n");
        return -1;
    }
    if (!s->nb_streams) {
        FUNC7(s);
        FUNC5(s, AV_LOG_ERROR, "No streams found\n");
        return AVERROR_INVALIDDATA;
    }

    if (!matroska->is_live) {
        buf = FUNC1("%g", matroska->duration);
        if (!buf) return FUNC0(ENOMEM);
        FUNC2(&s->streams[0]->metadata, DURATION, buf, 0);
        FUNC4(buf);

        // initialization range
        // 5 is the offset of Cluster ID.
        init_range = FUNC6(s->pb) - 5;
        FUNC3(&s->streams[0]->metadata, INITIALIZATION_RANGE, init_range, 0);
    }

    // basename of the file
    buf = FUNC9(s->url, '/');
    FUNC2(&s->streams[0]->metadata, FILENAME, buf ? ++buf : s->url, 0);

    // track number
    tracks = matroska->tracks.elem;
    FUNC3(&s->streams[0]->metadata, TRACK_NUMBER, tracks[0].num, 0);

    // parse the cues and populate Cue related fields
    if (!matroska->is_live) {
        ret = FUNC10(s, init_range);
        if (ret < 0) {
            FUNC5(s, AV_LOG_ERROR, "Error parsing Cues\n");
            return ret;
        }
    }

    // use the bandwidth from the command line if it was provided
    if (matroska->bandwidth > 0) {
        FUNC3(&s->streams[0]->metadata, BANDWIDTH,
                        matroska->bandwidth, 0);
    }
    return 0;
}