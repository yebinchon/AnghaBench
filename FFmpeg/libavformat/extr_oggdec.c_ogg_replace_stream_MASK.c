#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  void* uint32_t ;
struct ogg_stream {scalar_t__ private; int header; struct ogg_codec const* codec; int /*<<< orphan*/  buf; int /*<<< orphan*/  bufsize; void* serial; } ;
typedef  struct ogg_codec const ogg_codec ;
struct ogg {int nstreams; struct ogg_stream* streams; TYPE_2__* state; } ;
typedef  int /*<<< orphan*/  magic ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_15__ {int seekable; } ;
struct TYPE_14__ {TYPE_7__* pb; struct ogg* priv_data; } ;
struct TYPE_13__ {TYPE_1__* streams; } ;
struct TYPE_12__ {scalar_t__ private; } ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int AVIO_SEEKABLE_NORMAL ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  buf ; 
 int /*<<< orphan*/  bufsize ; 
 int /*<<< orphan*/  FUNC7 (struct ogg_stream*,int /*<<< orphan*/ ,int) ; 
 struct ogg_codec const* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (TYPE_3__*,void*) ; 

__attribute__((used)) static int FUNC10(AVFormatContext *s, uint32_t serial, int nsegs)
{
    struct ogg *ogg = s->priv_data;
    struct ogg_stream *os;
    const struct ogg_codec *codec;
    int i = 0;

    if (s->pb->seekable & AVIO_SEEKABLE_NORMAL) {
        uint8_t magic[8];
        int64_t pos = FUNC5(s->pb);
        FUNC4(s->pb, nsegs);
        FUNC2(s->pb, magic, sizeof(magic));
        FUNC3(s->pb, pos, SEEK_SET);
        codec = FUNC8(magic, sizeof(magic));
        if (!codec) {
            FUNC1(s, AV_LOG_ERROR, "Cannot identify new stream\n");
            return AVERROR_INVALIDDATA;
        }
        for (i = 0; i < ogg->nstreams; i++) {
            if (ogg->streams[i].codec == codec)
                break;
        }
        if (i >= ogg->nstreams)
            return FUNC9(s, serial);
    } else if (ogg->nstreams != 1) {
        FUNC6(s, "Changing stream parameters in multistream ogg");
        return AVERROR_PATCHWELCOME;
    }

    os = &ogg->streams[i];

    os->serial  = serial;
    return i;

#if 0
    buf     = os->buf;
    bufsize = os->bufsize;
    codec   = os->codec;

    if (!ogg->state || ogg->state->streams[i].private != os->private)
        av_freep(&ogg->streams[i].private);

    /* Set Ogg stream settings similar to what is done in ogg_new_stream(). We
     * also re-use the ogg_stream allocated buffer */
    memset(os, 0, sizeof(*os));
    os->serial  = serial;
    os->bufsize = bufsize;
    os->buf     = buf;
    os->header  = -1;
    os->codec   = codec;

    return i;
#endif
}