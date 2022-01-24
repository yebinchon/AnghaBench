#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_20__ {char* value; } ;
struct TYPE_19__ {int /*<<< orphan*/ * pb; TYPE_4__** streams; } ;
struct TYPE_18__ {size_t stream_index; int size; int /*<<< orphan*/ * data; } ;
struct TYPE_17__ {int /*<<< orphan*/  metadata; int /*<<< orphan*/  index; TYPE_1__* codecpar; } ;
struct TYPE_16__ {scalar_t__ id; char* str; } ;
struct TYPE_15__ {int version; int /*<<< orphan*/  len; } ;
struct TYPE_14__ {scalar_t__ codec_id; } ;
typedef  TYPE_2__ ID3v2EncContext ;
typedef  TYPE_3__ CodecMime ;
typedef  TYPE_4__ AVStream ;
typedef  TYPE_5__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_6__ AVFormatContext ;
typedef  TYPE_7__ AVDictionaryEntry ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_CODEC_ID_NONE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int ID3v2_ENCODING_ISO8859 ; 
 int ID3v2_ENCODING_UTF16BOM ; 
 int ID3v2_ENCODING_UTF8 ; 
 scalar_t__ ID3v2_HEADER_SIZE ; 
 int FUNC2 (char,char,char,char) ; 
 TYPE_7__* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_3__* ff_id3v2_mime_tags ; 
 int /*<<< orphan*/ * ff_id3v2_picture_types ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC16 (char const*) ; 

int FUNC17(AVFormatContext *s, ID3v2EncContext *id3, AVPacket *pkt)
{
    AVStream *st = s->streams[pkt->stream_index];
    AVDictionaryEntry *e;

    AVIOContext *dyn_buf;
    uint8_t     *buf;
    const CodecMime *mime = ff_id3v2_mime_tags;
    const char  *mimetype = NULL, *desc = "";
    int enc = id3->version == 3 ? ID3v2_ENCODING_UTF16BOM :
                                  ID3v2_ENCODING_UTF8;
    int i, len, type = 0;

    /* get the mimetype*/
    while (mime->id != AV_CODEC_ID_NONE) {
        if (mime->id == st->codecpar->codec_id) {
            mimetype = mime->str;
            break;
        }
        mime++;
    }
    if (!mimetype) {
        FUNC5(s, AV_LOG_ERROR, "No mimetype is known for stream %d, cannot "
               "write an attached picture.\n", st->index);
        return FUNC0(EINVAL);
    }

    /* get the picture type */
    e = FUNC3(st->metadata, "comment", NULL, 0);
    for (i = 0; e && i < FUNC1(ff_id3v2_picture_types); i++) {
        if (!FUNC6(e->value, ff_id3v2_picture_types[i])) {
            type = i;
            break;
        }
    }

    /* get the description */
    if ((e = FUNC3(st->metadata, "title", NULL, 0)))
        desc = e->value;

    /* use UTF16 only for non-ASCII strings */
    if (enc == ID3v2_ENCODING_UTF16BOM && FUNC16(desc))
        enc = ID3v2_ENCODING_ISO8859;

    /* start writing */
    if (FUNC8(&dyn_buf) < 0)
        return FUNC0(ENOMEM);

    FUNC10(dyn_buf, enc);
    FUNC9(dyn_buf, mimetype);
    FUNC10(dyn_buf, type);
    FUNC14(dyn_buf, desc, enc);
    FUNC13(dyn_buf, pkt->data, pkt->size);
    len = FUNC7(dyn_buf, &buf);

    FUNC12(s->pb, FUNC2('A', 'P', 'I', 'C'));
    if (id3->version == 3)
        FUNC12(s->pb, len);
    else
        FUNC15(s->pb, len);
    FUNC11(s->pb, 0);
    FUNC13(s->pb, buf, len);
    FUNC4(&buf);

    id3->len += len + ID3v2_HEADER_SIZE;

    return 0;
}