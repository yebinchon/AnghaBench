#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ is_live; } ;
typedef  TYPE_2__ WebMDashMuxContext ;
struct TYPE_13__ {char* value; } ;
struct TYPE_12__ {int /*<<< orphan*/  pb; TYPE_2__* priv_data; } ;
struct TYPE_11__ {TYPE_1__* codecpar; int /*<<< orphan*/  metadata; } ;
struct TYPE_9__ {scalar_t__ codec_type; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVFormatContext ;
typedef  TYPE_5__ AVDictionaryEntry ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  BANDWIDTH ; 
 int /*<<< orphan*/  CUES_END ; 
 int /*<<< orphan*/  CUES_START ; 
 int /*<<< orphan*/  FILENAME ; 
 int /*<<< orphan*/  INITIALIZATION_RANGE ; 
 TYPE_5__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, AVStream *stream, char *id,
                                int output_width, int output_height,
                                int output_sample_rate) {
    WebMDashMuxContext *w = s->priv_data;
    AVDictionaryEntry *irange = FUNC0(stream->metadata, INITIALIZATION_RANGE, NULL, 0);
    AVDictionaryEntry *cues_start = FUNC0(stream->metadata, CUES_START, NULL, 0);
    AVDictionaryEntry *cues_end = FUNC0(stream->metadata, CUES_END, NULL, 0);
    AVDictionaryEntry *filename = FUNC0(stream->metadata, FILENAME, NULL, 0);
    AVDictionaryEntry *bandwidth = FUNC0(stream->metadata, BANDWIDTH, NULL, 0);
    const char *bandwidth_str;
    if ((w->is_live && (!filename)) ||
        (!w->is_live && (!irange || !cues_start || !cues_end || !filename || !bandwidth))) {
        return AVERROR_INVALIDDATA;
    }
    FUNC1(s->pb, "<Representation id=\"%s\"", id);
    // if bandwidth for live was not provided, use a default
    if (w->is_live && !bandwidth) {
        bandwidth_str = (stream->codecpar->codec_type == AVMEDIA_TYPE_AUDIO) ? "128000" : "1000000";
    } else {
        bandwidth_str = bandwidth->value;
    }
    FUNC1(s->pb, " bandwidth=\"%s\"", bandwidth_str);
    if (stream->codecpar->codec_type == AVMEDIA_TYPE_VIDEO && output_width)
        FUNC1(s->pb, " width=\"%d\"", stream->codecpar->width);
    if (stream->codecpar->codec_type == AVMEDIA_TYPE_VIDEO && output_height)
        FUNC1(s->pb, " height=\"%d\"", stream->codecpar->height);
    if (stream->codecpar->codec_type == AVMEDIA_TYPE_AUDIO && output_sample_rate)
        FUNC1(s->pb, " audioSamplingRate=\"%d\"", stream->codecpar->sample_rate);
    if (w->is_live) {
        // For live streams, Codec and Mime Type always go in the Representation tag.
        FUNC1(s->pb, " codecs=\"%s\"", FUNC2(stream->codecpar->codec_id));
        FUNC1(s->pb, " mimeType=\"%s/webm\"",
                    stream->codecpar->codec_type == AVMEDIA_TYPE_VIDEO ? "video" : "audio");
        // For live streams, subsegments always start with key frames. So this
        // is always 1.
        FUNC1(s->pb, " startsWithSAP=\"1\"");
        FUNC1(s->pb, ">");
    } else {
        FUNC1(s->pb, ">\n");
        FUNC1(s->pb, "<BaseURL>%s</BaseURL>\n", filename->value);
        FUNC1(s->pb, "<SegmentBase\n");
        FUNC1(s->pb, "  indexRange=\"%s-%s\">\n", cues_start->value, cues_end->value);
        FUNC1(s->pb, "<Initialization\n");
        FUNC1(s->pb, "  range=\"0-%s\" />\n", irange->value);
        FUNC1(s->pb, "</SegmentBase>\n");
    }
    FUNC1(s->pb, "</Representation>\n");
    return 0;
}