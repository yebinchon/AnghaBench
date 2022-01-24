#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ogg_stream {int page_pos; scalar_t__ psize; char* segments; int nsegs; int segp; int got_data; int pstart; int sync_pos; int bufsize; int bufpos; char* buf; int flags; int /*<<< orphan*/  granule; scalar_t__ incomplete; } ;
struct ogg {int page_pos; struct ogg_stream* streams; } ;
struct TYPE_16__ {struct ogg* priv_data; TYPE_1__* pb; } ;
struct TYPE_15__ {int seekable; } ;
typedef  TYPE_1__ AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int AVIO_SEEKABLE_NORMAL ; 
 int AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int MAX_PAGE_SIZE ; 
 int OGG_FLAG_BOS ; 
 int OGG_FLAG_CONT ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (struct ogg*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (struct ogg*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct ogg*,int) ; 
 int FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC19(AVFormatContext *s, int *sid)
{
    AVIOContext *bc = s->pb;
    struct ogg *ogg = s->priv_data;
    struct ogg_stream *os;
    int ret, i = 0;
    int flags, nsegs;
    uint64_t gp;
    uint32_t serial;
    int size, idx;
    uint8_t sync[4];
    int sp = 0;

    ret = FUNC6(bc, sync, 4);
    if (ret < 4)
        return ret < 0 ? ret : AVERROR_EOF;

    do {
        int c;

        if (sync[sp & 3] == 'O' &&
            sync[(sp + 1) & 3] == 'g' &&
            sync[(sp + 2) & 3] == 'g' && sync[(sp + 3) & 3] == 'S')
            break;

        if(!i && (bc->seekable & AVIO_SEEKABLE_NORMAL) && ogg->page_pos > 0) {
            FUNC14(sync, 0, 4);
            FUNC9(bc, ogg->page_pos+4, SEEK_SET);
            ogg->page_pos = -1;
        }

        c = FUNC5(bc);

        if (FUNC4(bc))
            return AVERROR_EOF;

        sync[sp++ & 3] = c;
    } while (i++ < MAX_PAGE_SIZE);

    if (i >= MAX_PAGE_SIZE) {
        FUNC2(s, AV_LOG_INFO, "cannot find sync word\n");
        return AVERROR_INVALIDDATA;
    }

    if (FUNC5(bc) != 0) {      /* version */
        FUNC2 (s, AV_LOG_ERROR, "ogg page, unsupported version\n");
        return AVERROR_INVALIDDATA;
    }

    flags  = FUNC5(bc);
    gp     = FUNC8(bc);
    serial = FUNC7(bc);
    FUNC10(bc, 8); /* seq, crc */
    nsegs  = FUNC5(bc);

    idx = FUNC15(ogg, serial);
    if (idx < 0) {
        if (FUNC12(ogg))
            idx = FUNC18(s, serial, nsegs);
        else
            idx = FUNC17(s, serial);

        if (idx < 0) {
            FUNC2(s, AV_LOG_ERROR, "failed to create or replace stream\n");
            return idx;
        }
    }

    os = ogg->streams + idx;
    ogg->page_pos =
    os->page_pos = FUNC11(bc) - 27;

    if (os->psize > 0) {
        ret = FUNC16(ogg, idx);
        if (ret < 0)
            return ret;
    }

    ret = FUNC6(bc, os->segments, nsegs);
    if (ret < nsegs)
        return ret < 0 ? ret : AVERROR_EOF;

    os->nsegs = nsegs;
    os->segp  = 0;

    size = 0;
    for (i = 0; i < nsegs; i++)
        size += os->segments[i];

    if (!(flags & OGG_FLAG_BOS))
        os->got_data = 1;

    if (flags & OGG_FLAG_CONT || os->incomplete) {
        if (!os->psize) {
            // If this is the very first segment we started
            // playback in the middle of a continuation packet.
            // Discard it since we missed the start of it.
            while (os->segp < os->nsegs) {
                int seg = os->segments[os->segp++];
                os->pstart += seg;
                if (seg < 255)
                    break;
            }
            os->sync_pos = os->page_pos;
        }
    } else {
        os->psize    = 0;
        os->sync_pos = os->page_pos;
    }

    if (os->bufsize - os->bufpos < size) {
        uint8_t *nb = FUNC3((os->bufsize *= 2) + AV_INPUT_BUFFER_PADDING_SIZE);
        if (!nb)
            return FUNC0(ENOMEM);
        FUNC13(nb, os->buf, os->bufpos);
        FUNC1(os->buf);
        os->buf = nb;
    }

    ret = FUNC6(bc, os->buf + os->bufpos, size);
    if (ret < size)
        return ret < 0 ? ret : AVERROR_EOF;

    os->bufpos += size;
    os->granule = gp;
    os->flags   = flags;

    FUNC14(os->buf + os->bufpos, 0, AV_INPUT_BUFFER_PADDING_SIZE);
    if (sid)
        *sid = idx;

    return 0;
}