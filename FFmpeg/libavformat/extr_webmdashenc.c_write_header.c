
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int time_t ;
struct tm {int dummy; } ;
struct TYPE_5__ {char* time_shift_buffer_depth; char* minimum_update_period; char* utc_timing_url; scalar_t__ debug_mode; scalar_t__ is_live; } ;
typedef TYPE_1__ WebMDashMuxContext ;
struct TYPE_6__ {int pb; TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR_UNKNOWN ;
 int av_strlcpy (char*,char*,int) ;
 int avio_printf (int ,char*,...) ;
 char* get_duration (TYPE_2__*) ;
 struct tm* gmtime_r (int *,struct tm*) ;
 int strftime (char*,int,char*,struct tm*) ;
 int time (int *) ;

__attribute__((used)) static int write_header(AVFormatContext *s)
{
    WebMDashMuxContext *w = s->priv_data;
    double min_buffer_time = 1.0;
    avio_printf(s->pb, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n");
    avio_printf(s->pb, "<MPD\n");
    avio_printf(s->pb, "  xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\n");
    avio_printf(s->pb, "  xmlns=\"urn:mpeg:DASH:schema:MPD:2011\"\n");
    avio_printf(s->pb, "  xsi:schemaLocation=\"urn:mpeg:DASH:schema:MPD:2011\"\n");
    avio_printf(s->pb, "  type=\"%s\"\n", w->is_live ? "dynamic" : "static");
    if (!w->is_live) {
        avio_printf(s->pb, "  mediaPresentationDuration=\"PT%gS\"\n",
                    get_duration(s));
    }
    avio_printf(s->pb, "  minBufferTime=\"PT%gS\"\n", min_buffer_time);
    avio_printf(s->pb, "  profiles=\"%s\"%s",
                w->is_live ? "urn:mpeg:dash:profile:isoff-live:2011" : "urn:webm:dash:profile:webm-on-demand:2012",
                w->is_live ? "\n" : ">\n");
    if (w->is_live) {
        time_t local_time = time(((void*)0));
        struct tm gmt_buffer;
        struct tm *gmt = gmtime_r(&local_time, &gmt_buffer);
        char gmt_iso[21];
        if (!strftime(gmt_iso, 21, "%Y-%m-%dT%H:%M:%SZ", gmt)) {
            return AVERROR_UNKNOWN;
        }
        if (w->debug_mode) {
            av_strlcpy(gmt_iso, "", 1);
        }
        avio_printf(s->pb, "  availabilityStartTime=\"%s\"\n", gmt_iso);
        avio_printf(s->pb, "  timeShiftBufferDepth=\"PT%gS\"\n", w->time_shift_buffer_depth);
        avio_printf(s->pb, "  minimumUpdatePeriod=\"PT%dS\"", w->minimum_update_period);
        avio_printf(s->pb, ">\n");
        if (w->utc_timing_url) {
            avio_printf(s->pb, "<UTCTiming\n");
            avio_printf(s->pb, "  schemeIdUri=\"urn:mpeg:dash:utc:http-iso:2014\"\n");
            avio_printf(s->pb, "  value=\"%s\"/>\n", w->utc_timing_url);
        }
    }
    return 0;
}
