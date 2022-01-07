
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;


struct TYPE_21__ {size_t stream_idx; int fileuid; } ;
typedef TYPE_4__ mkv_attachment ;
typedef int ebml_master ;
struct TYPE_25__ {int id; int metadata; } ;
struct TYPE_24__ {int nb_streams; int nb_chapters; TYPE_13__* pb; TYPE_6__** streams; TYPE_8__** chapters; int metadata; TYPE_5__* priv_data; } ;
struct TYPE_23__ {int metadata; TYPE_1__* codecpar; } ;
struct TYPE_22__ {scalar_t__ mode; int chapter_id_offset; int * tags_bc; int tags_pos; int is_live; TYPE_3__* attachments; scalar_t__ have_attachments; TYPE_2__* tracks; } ;
struct TYPE_20__ {int num_entries; TYPE_4__* entries; } ;
struct TYPE_19__ {int duration_offset; } ;
struct TYPE_18__ {scalar_t__ codec_type; } ;
struct TYPE_17__ {int seekable; } ;
typedef TYPE_5__ MatroskaMuxContext ;
typedef TYPE_6__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_7__ AVFormatContext ;
typedef TYPE_8__ AVChapter ;


 int AVIO_SEEKABLE_NORMAL ;
 scalar_t__ AVMEDIA_TYPE_ATTACHMENT ;
 int MATROSKA_ID_SIMPLETAG ;
 int MATROSKA_ID_TAGNAME ;
 int MATROSKA_ID_TAGTARGETS_ATTACHUID ;
 int MATROSKA_ID_TAGTARGETS_CHAPTERUID ;
 int MATROSKA_ID_TAGTARGETS_TRACKUID ;
 scalar_t__ MODE_WEBM ;
 int avio_tell (int *) ;
 int end_ebml_master (int *,int ) ;
 int end_ebml_master_crc32 (TYPE_13__*,int **,TYPE_5__*) ;
 int end_ebml_master_crc32_preliminary (TYPE_13__*,int **,TYPE_5__*,int *) ;
 int ff_metadata_conv_ctx (TYPE_7__*,int ,int *) ;
 int ff_mkv_metadata_conv ;
 scalar_t__ mkv_check_tag (int ,int ) ;
 int mkv_write_tag (TYPE_7__*,int ,int ,int) ;
 int mkv_write_tag_targets (TYPE_7__*,int ,int,int *) ;
 int put_ebml_string (int *,int ,char*) ;
 int put_ebml_void (int *,int) ;
 int start_ebml_master (int *,int ,int ) ;

__attribute__((used)) static int mkv_write_tags(AVFormatContext *s)
{
    MatroskaMuxContext *mkv = s->priv_data;
    int i, ret;

    ff_metadata_conv_ctx(s, ff_mkv_metadata_conv, ((void*)0));

    if (mkv_check_tag(s->metadata, 0)) {
        ret = mkv_write_tag(s, s->metadata, 0, 0);
        if (ret < 0) return ret;
    }

    for (i = 0; i < s->nb_streams; i++) {
        AVStream *st = s->streams[i];

        if (st->codecpar->codec_type == AVMEDIA_TYPE_ATTACHMENT)
            continue;

        if (!mkv_check_tag(st->metadata, MATROSKA_ID_TAGTARGETS_TRACKUID))
            continue;

        ret = mkv_write_tag(s, st->metadata, MATROSKA_ID_TAGTARGETS_TRACKUID, i + 1);
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

            mkv_write_tag_targets(s, MATROSKA_ID_TAGTARGETS_TRACKUID, i + 1, &tag_target);
            pb = mkv->tags_bc;

            tag = start_ebml_master(pb, MATROSKA_ID_SIMPLETAG, 0);
            put_ebml_string(pb, MATROSKA_ID_TAGNAME, "DURATION");
            mkv->tracks[i].duration_offset = avio_tell(pb);



            put_ebml_void(pb, 23);
            end_ebml_master(pb, tag);
            end_ebml_master(pb, tag_target);
        }
    }

    if (mkv->mode != MODE_WEBM) {
        for (i = 0; i < s->nb_chapters; i++) {
            AVChapter *ch = s->chapters[i];

            if (!mkv_check_tag(ch->metadata, MATROSKA_ID_TAGTARGETS_CHAPTERUID))
                continue;

            ret = mkv_write_tag(s, ch->metadata, MATROSKA_ID_TAGTARGETS_CHAPTERUID, ch->id + mkv->chapter_id_offset);
            if (ret < 0)
                return ret;
        }
    }

    if (mkv->have_attachments && mkv->mode != MODE_WEBM) {
        for (i = 0; i < mkv->attachments->num_entries; i++) {
            mkv_attachment *attachment = &mkv->attachments->entries[i];
            AVStream *st = s->streams[attachment->stream_idx];

            if (!mkv_check_tag(st->metadata, MATROSKA_ID_TAGTARGETS_ATTACHUID))
                continue;

            ret = mkv_write_tag(s, st->metadata, MATROSKA_ID_TAGTARGETS_ATTACHUID, attachment->fileuid);
            if (ret < 0)
                return ret;
        }
    }

    if (mkv->tags_bc) {
        if ((s->pb->seekable & AVIO_SEEKABLE_NORMAL) && !mkv->is_live)
            end_ebml_master_crc32_preliminary(s->pb, &mkv->tags_bc, mkv, &mkv->tags_pos);
        else
            end_ebml_master_crc32(s->pb, &mkv->tags_bc, mkv);
    }
    return 0;
}
