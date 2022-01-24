#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  temp_filename ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  filename ;
struct TYPE_16__ {char* url; int (* io_open ) (TYPE_5__*,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;TYPE_1__** streams; TYPE_4__* priv_data; } ;
struct TYPE_15__ {scalar_t__ window_size; } ;
struct TYPE_14__ {size_t first_stream; int nb_fragments; int fragment_index; TYPE_2__** fragments; int /*<<< orphan*/  last_ts; } ;
struct TYPE_13__ {int n; int duration; int /*<<< orphan*/  start_time; } ;
struct TYPE_12__ {int id; } ;
typedef  TYPE_3__ OutputStream ;
typedef  TYPE_4__ HDSContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char,float,char,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ **) ; 
 int FUNC9 (char*,char*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*,int) ; 
 int FUNC11 (TYPE_5__*,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(AVFormatContext *s, OutputStream *os, int final)
{
    HDSContext *c = s->priv_data;
    AVIOContext *out;
    char filename[1024], temp_filename[1024];
    int i, ret;
    int64_t asrt_pos, afrt_pos;
    int start = 0, fragments;
    int index = s->streams[os->first_stream]->id;
    int64_t cur_media_time = 0;
    if (c->window_size)
        start = FUNC0(os->nb_fragments - c->window_size, 0);
    fragments = os->nb_fragments - start;
    if (final)
        cur_media_time = os->last_ts;
    else if (os->nb_fragments)
        cur_media_time = os->fragments[os->nb_fragments - 1]->start_time;

    FUNC10(filename, sizeof(filename),
             "%s/stream%d.abst", s->url, index);
    FUNC10(temp_filename, sizeof(temp_filename),
             "%s/stream%d.abst.tmp", s->url, index);
    ret = s->io_open(s, &out, temp_filename, AVIO_FLAG_WRITE, NULL);
    if (ret < 0) {
        FUNC2(s, AV_LOG_ERROR, "Unable to open %s for writing\n", temp_filename);
        return ret;
    }
    FUNC5(out, 0); // abst size
    FUNC7(out, FUNC1('a','b','s','t'));
    FUNC5(out, 0); // version + flags
    FUNC5(out, os->fragment_index - 1); // BootstrapinfoVersion
    FUNC4(out, final ? 0 : 0x20); // profile, live, update
    FUNC5(out, 1000); // timescale
    FUNC6(out, cur_media_time);
    FUNC6(out, 0); // SmpteTimeCodeOffset
    FUNC4(out, 0); // MovieIdentifer (null string)
    FUNC4(out, 0); // ServerEntryCount
    FUNC4(out, 0); // QualityEntryCount
    FUNC4(out, 0); // DrmData (null string)
    FUNC4(out, 0); // MetaData (null string)
    FUNC4(out, 1); // SegmentRunTableCount
    asrt_pos = FUNC3(out);
    FUNC5(out, 0); // asrt size
    FUNC7(out, FUNC1('a','s','r','t'));
    FUNC5(out, 0); // version + flags
    FUNC4(out, 0); // QualityEntryCount
    FUNC5(out, 1); // SegmentRunEntryCount
    FUNC5(out, 1); // FirstSegment
    FUNC5(out, final ? (os->fragment_index - 1) : 0xffffffff); // FragmentsPerSegment
    FUNC12(out, asrt_pos);
    FUNC4(out, 1); // FragmentRunTableCount
    afrt_pos = FUNC3(out);
    FUNC5(out, 0); // afrt size
    FUNC7(out, FUNC1('a','f','r','t'));
    FUNC5(out, 0); // version + flags
    FUNC5(out, 1000); // timescale
    FUNC4(out, 0); // QualityEntryCount
    FUNC5(out, fragments); // FragmentRunEntryCount
    for (i = start; i < os->nb_fragments; i++) {
        FUNC5(out, os->fragments[i]->n);
        FUNC6(out, os->fragments[i]->start_time);
        FUNC5(out, os->fragments[i]->duration);
    }
    FUNC12(out, afrt_pos);
    FUNC12(out, 0);
    FUNC8(s, &out);
    return FUNC9(temp_filename, filename, s);
}