#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct AVFormatContext {TYPE_4__** streams; int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_15__ {char* value; } ;
struct TYPE_14__ {size_t stream_index; char const* data; int size; } ;
struct TYPE_13__ {TYPE_1__* codecpar; int /*<<< orphan*/  metadata; int /*<<< orphan*/  index; } ;
struct TYPE_12__ {scalar_t__ id; char* str; } ;
struct TYPE_11__ {int attached_types; } ;
struct TYPE_10__ {scalar_t__ codec_id; int width; int height; int /*<<< orphan*/  format; } ;
typedef  TYPE_2__ FlacMuxerContext ;
typedef  TYPE_3__ CodecMime ;
typedef  TYPE_4__ AVStream ;
typedef  int /*<<< orphan*/  AVPixFmtDescriptor ;
typedef  TYPE_5__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_6__ AVDictionaryEntry ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_CODEC_ID_NONE ; 
 scalar_t__ AV_CODEC_ID_PNG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (struct AVFormatContext*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,int) ; 
 TYPE_3__* ff_id3v2_mime_tags ; 
 int /*<<< orphan*/ * ff_id3v2_picture_types ; 
 int FUNC11 (char const*) ; 

__attribute__((used)) static int FUNC12(struct AVFormatContext *s, AVPacket *pkt)
{
    FlacMuxerContext *c = s->priv_data;
    AVIOContext *pb = s->pb;
    const AVPixFmtDescriptor *pixdesc;
    const CodecMime *mime = ff_id3v2_mime_tags;
    AVDictionaryEntry *e;
    const char *mimetype = NULL, *desc = "";
    const AVStream *st = s->streams[pkt->stream_index];
    int i, mimelen, desclen, type = 0, blocklen;

    if (!pkt->data)
        return 0;

    while (mime->id != AV_CODEC_ID_NONE) {
        if (mime->id == st->codecpar->codec_id) {
            mimetype = mime->str;
            break;
        }
        mime++;
    }
    if (!mimetype) {
        FUNC4(s, AV_LOG_ERROR, "No mimetype is known for stream %d, cannot "
               "write an attached picture.\n", st->index);
        return FUNC0(EINVAL);
    }
    mimelen = FUNC11(mimetype);

    /* get the picture type */
    e = FUNC2(st->metadata, "comment", NULL, 0);
    for (i = 0; e && i < FUNC1(ff_id3v2_picture_types); i++) {
        if (!FUNC6(e->value, ff_id3v2_picture_types[i])) {
            type = i;
            break;
        }
    }

    if ((c->attached_types & (1 << type)) & 0x6) {
        FUNC4(s, AV_LOG_ERROR, "Duplicate attachment for type '%s'\n", ff_id3v2_picture_types[type]);
        return FUNC0(EINVAL);
    }

    if (type == 1 && (st->codecpar->codec_id != AV_CODEC_ID_PNG ||
                      st->codecpar->width != 32 ||
                      st->codecpar->height != 32)) {
        FUNC4(s, AV_LOG_ERROR, "File icon attachment must be a 32x32 PNG");
        return FUNC0(EINVAL);
    }

    c->attached_types |= (1 << type);

    /* get the description */
    if ((e = FUNC2(st->metadata, "title", NULL, 0)))
        desc = e->value;
    desclen = FUNC11(desc);

    blocklen = 4 + 4 + mimelen + 4 + desclen + 4 + 4 + 4 + 4 + 4 + pkt->size;
    if (blocklen >= 1<<24) {
        FUNC4(s, AV_LOG_ERROR, "Picture block too big %d >= %d\n", blocklen, 1<<24);
        return FUNC0(EINVAL);
    }

    FUNC7(pb, 0x06);
    FUNC8(pb, blocklen);

    FUNC9(pb, type);

    FUNC9(pb, mimelen);
    FUNC10(pb, mimetype, mimelen);

    FUNC9(pb, desclen);
    FUNC10(pb, desc, desclen);

    FUNC9(pb, st->codecpar->width);
    FUNC9(pb, st->codecpar->height);
    if ((pixdesc = FUNC5(st->codecpar->format)))
        FUNC9(pb, FUNC3(pixdesc));
    else
        FUNC9(pb, 0);
    FUNC9(pb, 0);

    FUNC9(pb, pkt->size);
    FUNC10(pb, pkt->data, pkt->size);
    return 0;
}