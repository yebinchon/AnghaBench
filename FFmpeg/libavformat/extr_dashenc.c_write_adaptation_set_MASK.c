#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bandwidth_str ;
struct TYPE_22__ {int /*<<< orphan*/  value; } ;
struct TYPE_21__ {int nb_streams; TYPE_6__** streams; TYPE_4__* priv_data; } ;
struct TYPE_15__ {int num; int /*<<< orphan*/  den; } ;
struct TYPE_20__ {TYPE_2__* codecpar; TYPE_1__ avg_frame_rate; } ;
struct TYPE_14__ {int /*<<< orphan*/  den; scalar_t__ num; } ;
struct TYPE_19__ {scalar_t__ media_type; scalar_t__ descriptor; int /*<<< orphan*/  metadata; TYPE_13__ max_frame_rate; int /*<<< orphan*/  min_frame_rate; int /*<<< orphan*/  ambiguous_frame_rate; int /*<<< orphan*/  id; } ;
struct TYPE_18__ {TYPE_3__* streams; TYPE_5__* as; } ;
struct TYPE_17__ {int as_idx; scalar_t__ bit_rate; int /*<<< orphan*/  codec_str; int /*<<< orphan*/  format_name; } ;
struct TYPE_16__ {int /*<<< orphan*/  channels; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_3__ OutputStream ;
typedef  TYPE_4__ DASHContext ;
typedef  TYPE_5__ AdaptationSet ;
typedef  TYPE_6__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_7__ AVFormatContext ;
typedef  TYPE_8__ AVDictionaryEntry ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_13__) ; 
 TYPE_8__* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_7__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, AVIOContext *out, int as_index,
                                int final)
{
    DASHContext *c = s->priv_data;
    AdaptationSet *as = &c->as[as_index];
    AVDictionaryEntry *lang, *role;
    int i;

    FUNC2(out, "\t\t<AdaptationSet id=\"%s\" contentType=\"%s\" segmentAlignment=\"true\" bitstreamSwitching=\"true\"",
                as->id, as->media_type == AVMEDIA_TYPE_VIDEO ? "video" : "audio");
    if (as->media_type == AVMEDIA_TYPE_VIDEO && as->max_frame_rate.num && !as->ambiguous_frame_rate && FUNC0(as->min_frame_rate, as->max_frame_rate) < 0)
        FUNC2(out, " maxFrameRate=\"%d/%d\"", as->max_frame_rate.num, as->max_frame_rate.den);
    lang = FUNC1(as->metadata, "language", NULL, 0);
    if (lang)
        FUNC2(out, " lang=\"%s\"", lang->value);
    FUNC2(out, ">\n");

    role = FUNC1(as->metadata, "role", NULL, 0);
    if (role)
        FUNC2(out, "\t\t\t<Role schemeIdUri=\"urn:mpeg:dash:role:2011\" value=\"%s\"/>\n", role->value);
    if (as->descriptor)
        FUNC2(out, "\t\t\t%s\n", as->descriptor);
    for (i = 0; i < s->nb_streams; i++) {
        OutputStream *os = &c->streams[i];
        char bandwidth_str[64] = {'\0'};

        if (os->as_idx - 1 != as_index)
            continue;

        if (os->bit_rate > 0)
            FUNC4(bandwidth_str, sizeof(bandwidth_str), " bandwidth=\"%d\"",
                     os->bit_rate);

        if (as->media_type == AVMEDIA_TYPE_VIDEO) {
            AVStream *st = s->streams[i];
            FUNC2(out, "\t\t\t<Representation id=\"%d\" mimeType=\"video/%s\" codecs=\"%s\"%s width=\"%d\" height=\"%d\"",
                i, os->format_name, os->codec_str, bandwidth_str, s->streams[i]->codecpar->width, s->streams[i]->codecpar->height);
            if (st->avg_frame_rate.num)
                FUNC2(out, " frameRate=\"%d/%d\"", st->avg_frame_rate.num, st->avg_frame_rate.den);
            FUNC2(out, ">\n");
        } else {
            FUNC2(out, "\t\t\t<Representation id=\"%d\" mimeType=\"audio/%s\" codecs=\"%s\"%s audioSamplingRate=\"%d\">\n",
                i, os->format_name, os->codec_str, bandwidth_str, s->streams[i]->codecpar->sample_rate);
            FUNC2(out, "\t\t\t\t<AudioChannelConfiguration schemeIdUri=\"urn:mpeg:dash:23003:3:audio_channel_configuration:2011\" value=\"%d\" />\n",
                s->streams[i]->codecpar->channels);
        }
        FUNC3(os, out, s, i, final);
        FUNC2(out, "\t\t\t</Representation>\n");
    }
    FUNC2(out, "\t\t</AdaptationSet>\n");

    return 0;
}