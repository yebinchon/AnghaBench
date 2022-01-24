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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
struct TYPE_5__ {char* time_shift_buffer_depth; char* minimum_update_period; char* utc_timing_url; scalar_t__ debug_mode; scalar_t__ is_live; } ;
typedef  TYPE_1__ WebMDashMuxContext ;
struct TYPE_6__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 (TYPE_2__*) ; 
 struct tm* FUNC3 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s)
{
    WebMDashMuxContext *w = s->priv_data;
    double min_buffer_time = 1.0;
    FUNC1(s->pb, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n");
    FUNC1(s->pb, "<MPD\n");
    FUNC1(s->pb, "  xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\n");
    FUNC1(s->pb, "  xmlns=\"urn:mpeg:DASH:schema:MPD:2011\"\n");
    FUNC1(s->pb, "  xsi:schemaLocation=\"urn:mpeg:DASH:schema:MPD:2011\"\n");
    FUNC1(s->pb, "  type=\"%s\"\n", w->is_live ? "dynamic" : "static");
    if (!w->is_live) {
        FUNC1(s->pb, "  mediaPresentationDuration=\"PT%gS\"\n",
                    FUNC2(s));
    }
    FUNC1(s->pb, "  minBufferTime=\"PT%gS\"\n", min_buffer_time);
    FUNC1(s->pb, "  profiles=\"%s\"%s",
                w->is_live ? "urn:mpeg:dash:profile:isoff-live:2011" : "urn:webm:dash:profile:webm-on-demand:2012",
                w->is_live ? "\n" : ">\n");
    if (w->is_live) {
        time_t local_time = FUNC5(NULL);
        struct tm gmt_buffer;
        struct tm *gmt = FUNC3(&local_time, &gmt_buffer);
        char gmt_iso[21];
        if (!FUNC4(gmt_iso, 21, "%Y-%m-%dT%H:%M:%SZ", gmt)) {
            return AVERROR_UNKNOWN;
        }
        if (w->debug_mode) {
            FUNC0(gmt_iso, "", 1);
        }
        FUNC1(s->pb, "  availabilityStartTime=\"%s\"\n", gmt_iso);
        FUNC1(s->pb, "  timeShiftBufferDepth=\"PT%gS\"\n", w->time_shift_buffer_depth);
        FUNC1(s->pb, "  minimumUpdatePeriod=\"PT%dS\"", w->minimum_update_period);
        FUNC1(s->pb, ">\n");
        if (w->utc_timing_url) {
            FUNC1(s->pb, "<UTCTiming\n");
            FUNC1(s->pb, "  schemeIdUri=\"urn:mpeg:dash:utc:http-iso:2014\"\n");
            FUNC1(s->pb, "  value=\"%s\"/>\n", w->utc_timing_url);
        }
    }
    return 0;
}