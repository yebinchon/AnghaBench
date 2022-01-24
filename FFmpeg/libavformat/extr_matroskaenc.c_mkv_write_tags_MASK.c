#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_13__ ;

/* Type definitions */
struct TYPE_21__ {size_t stream_idx; int fileuid; } ;
typedef  TYPE_4__ mkv_attachment ;
typedef  int /*<<< orphan*/  ebml_master ;
struct TYPE_25__ {int id; int /*<<< orphan*/  metadata; } ;
struct TYPE_24__ {int nb_streams; int nb_chapters; TYPE_13__* pb; TYPE_6__** streams; TYPE_8__** chapters; int /*<<< orphan*/  metadata; TYPE_5__* priv_data; } ;
struct TYPE_23__ {int /*<<< orphan*/  metadata; TYPE_1__* codecpar; } ;
struct TYPE_22__ {scalar_t__ mode; int chapter_id_offset; int /*<<< orphan*/ * tags_bc; int /*<<< orphan*/  tags_pos; int /*<<< orphan*/  is_live; TYPE_3__* attachments; scalar_t__ have_attachments; TYPE_2__* tracks; } ;
struct TYPE_20__ {int num_entries; TYPE_4__* entries; } ;
struct TYPE_19__ {int /*<<< orphan*/  duration_offset; } ;
struct TYPE_18__ {scalar_t__ codec_type; } ;
struct TYPE_17__ {int seekable; } ;
typedef  TYPE_5__ MatroskaMuxContext ;
typedef  TYPE_6__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_7__ AVFormatContext ;
typedef  TYPE_8__ AVChapter ;

/* Variables and functions */
 int AVIO_SEEKABLE_NORMAL ; 
 scalar_t__ AVMEDIA_TYPE_ATTACHMENT ; 
 int /*<<< orphan*/  MATROSKA_ID_SIMPLETAG ; 
 int /*<<< orphan*/  MATROSKA_ID_TAGNAME ; 
 int /*<<< orphan*/  MATROSKA_ID_TAGTARGETS_ATTACHUID ; 
 int /*<<< orphan*/  MATROSKA_ID_TAGTARGETS_CHAPTERUID ; 
 int /*<<< orphan*/  MATROSKA_ID_TAGTARGETS_TRACKUID ; 
 scalar_t__ MODE_WEBM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_13__*,int /*<<< orphan*/ **,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_13__*,int /*<<< orphan*/ **,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ff_mkv_metadata_conv ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s)
{
    MatroskaMuxContext *mkv = s->priv_data;
    int i, ret;

    FUNC4(s, ff_mkv_metadata_conv, NULL);

    if (FUNC5(s->metadata, 0)) {
        ret = FUNC6(s, s->metadata, 0, 0);
        if (ret < 0) return ret;
    }

    for (i = 0; i < s->nb_streams; i++) {
        AVStream *st = s->streams[i];

        if (st->codecpar->codec_type == AVMEDIA_TYPE_ATTACHMENT)
            continue;

        if (!FUNC5(st->metadata, MATROSKA_ID_TAGTARGETS_TRACKUID))
            continue;

        ret = FUNC6(s, st->metadata, MATROSKA_ID_TAGTARGETS_TRACKUID, i + 1);
        if (ret < 0) return ret;
    }

    if ((s->pb->seekable & AVIO_SEEKABLE_NORMAL) && !mkv->is_live) {
        for (i = 0; i < s->nb_streams; i++) {
            AVIOContext *pb;
            AVStream *st = s->streams[i];
            ebml_master tag_target;
            ebml_master tag;

            if (st->codecpar->codec_type == AVMEDIA_TYPE_ATTACHMENT)
                continue;

            FUNC7(s, MATROSKA_ID_TAGTARGETS_TRACKUID, i + 1, &tag_target);
            pb = mkv->tags_bc;

            tag = FUNC10(pb, MATROSKA_ID_SIMPLETAG, 0);
            FUNC8(pb, MATROSKA_ID_TAGNAME, "DURATION");
            mkv->tracks[i].duration_offset = FUNC0(pb);

            // Reserve space to write duration as a 20-byte string.
            // 2 (ebml id) + 1 (data size) + 20 (data)
            FUNC9(pb, 23);
            FUNC1(pb, tag);
            FUNC1(pb, tag_target);
        }
    }

    if (mkv->mode != MODE_WEBM) {
        for (i = 0; i < s->nb_chapters; i++) {
            AVChapter *ch = s->chapters[i];

            if (!FUNC5(ch->metadata, MATROSKA_ID_TAGTARGETS_CHAPTERUID))
                continue;

            ret = FUNC6(s, ch->metadata, MATROSKA_ID_TAGTARGETS_CHAPTERUID, ch->id + mkv->chapter_id_offset);
            if (ret < 0)
                return ret;
        }
    }

    if (mkv->have_attachments && mkv->mode != MODE_WEBM) {
        for (i = 0; i < mkv->attachments->num_entries; i++) {
            mkv_attachment *attachment = &mkv->attachments->entries[i];
            AVStream *st = s->streams[attachment->stream_idx];

            if (!FUNC5(st->metadata, MATROSKA_ID_TAGTARGETS_ATTACHUID))
                continue;

            ret = FUNC6(s, st->metadata, MATROSKA_ID_TAGTARGETS_ATTACHUID, attachment->fileuid);
            if (ret < 0)
                return ret;
        }
    }

    if (mkv->tags_bc) {
        if ((s->pb->seekable & AVIO_SEEKABLE_NORMAL) && !mkv->is_live)
            FUNC3(s->pb, &mkv->tags_bc, mkv, &mkv->tags_pos);
        else
            FUNC2(s->pb, &mkv->tags_bc, mkv);
    }
    return 0;
}