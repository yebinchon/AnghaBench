
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_33__ {int value; } ;
struct TYPE_32__ {int url; int nb_streams; int pb; TYPE_2__** streams; int metadata; TYPE_4__* priv_data; } ;
struct TYPE_31__ {int start; } ;
struct TYPE_29__ {int end_time; int start_time; struct TYPE_29__* next; struct TYPE_29__* filename; } ;
struct TYPE_30__ {scalar_t__ list_size; scalar_t__ list_type; scalar_t__ segment_count; TYPE_3__ cur_entry; scalar_t__ increment_tc; TYPE_6__* avf; int list_pb; scalar_t__ list; int temp_list_filename; scalar_t__ use_rename; TYPE_3__* segment_list_entries; TYPE_3__* segment_list_entries_end; } ;
struct TYPE_28__ {int metadata; int avg_frame_rate; TYPE_1__* codecpar; } ;
struct TYPE_27__ {scalar_t__ codec_type; } ;
typedef TYPE_3__ SegmentListEntry ;
typedef TYPE_4__ SegmentContext ;
typedef TYPE_5__ AVTimecode ;
typedef int AVRational ;
typedef TYPE_6__ AVFormatContext ;
typedef TYPE_7__ AVDictionaryEntry ;


 int AVERROR (int ) ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int AV_LOG_WARNING ;
 int AV_TIMECODE_STR_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ LIST_TYPE_M3U8 ;
 TYPE_7__* av_dict_get (int ,char*,int *,int ) ;
 int av_dict_set (int *,char*,int ,int ) ;
 int av_freep (TYPE_3__**) ;
 int av_log (TYPE_6__*,int ,char*,...) ;
 TYPE_3__* av_mallocz (int) ;
 int av_q2d (int ) ;
 TYPE_3__* av_strdup (TYPE_3__*) ;
 scalar_t__ av_timecode_init_from_string (TYPE_5__*,int ,int ,TYPE_6__*) ;
 int av_timecode_make_string (TYPE_5__*,char*,int ) ;
 int av_write_frame (TYPE_6__*,int *) ;
 int av_write_trailer (TYPE_6__*) ;
 int avio_flush (int ) ;
 int avio_printf (int ,char*) ;
 int ff_format_io_close (TYPE_6__*,int *) ;
 int ff_rename (int ,scalar_t__,TYPE_6__*) ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 int segment_list_open (TYPE_6__*) ;
 int segment_list_print_entry (int ,scalar_t__,TYPE_3__*,TYPE_6__*) ;

__attribute__((used)) static int segment_end(AVFormatContext *s, int write_trailer, int is_last)
{
    SegmentContext *seg = s->priv_data;
    AVFormatContext *oc = seg->avf;
    int ret = 0;
    AVTimecode tc;
    AVRational rate;
    AVDictionaryEntry *tcr;
    char buf[AV_TIMECODE_STR_SIZE];
    int i;
    int err;

    if (!oc || !oc->pb)
        return AVERROR(EINVAL);

    av_write_frame(oc, ((void*)0));
    if (write_trailer)
        ret = av_write_trailer(oc);

    if (ret < 0)
        av_log(s, AV_LOG_ERROR, "Failure occurred when ending segment '%s'\n",
               oc->url);

    if (seg->list) {
        if (seg->list_size || seg->list_type == LIST_TYPE_M3U8) {
            SegmentListEntry *entry = av_mallocz(sizeof(*entry));
            if (!entry) {
                ret = AVERROR(ENOMEM);
                goto end;
            }


            memcpy(entry, &seg->cur_entry, sizeof(*entry));
            entry->filename = av_strdup(entry->filename);
            if (!seg->segment_list_entries)
                seg->segment_list_entries = seg->segment_list_entries_end = entry;
            else
                seg->segment_list_entries_end->next = entry;
            seg->segment_list_entries_end = entry;


            if (seg->list_size && seg->segment_count >= seg->list_size) {
                entry = seg->segment_list_entries;
                seg->segment_list_entries = seg->segment_list_entries->next;
                av_freep(&entry->filename);
                av_freep(&entry);
            }

            if ((ret = segment_list_open(s)) < 0)
                goto end;
            for (entry = seg->segment_list_entries; entry; entry = entry->next)
                segment_list_print_entry(seg->list_pb, seg->list_type, entry, s);
            if (seg->list_type == LIST_TYPE_M3U8 && is_last)
                avio_printf(seg->list_pb, "#EXT-X-ENDLIST\n");
            ff_format_io_close(s, &seg->list_pb);
            if (seg->use_rename)
                ff_rename(seg->temp_list_filename, seg->list, s);
        } else {
            segment_list_print_entry(seg->list_pb, seg->list_type, &seg->cur_entry, s);
            avio_flush(seg->list_pb);
        }
    }

    av_log(s, AV_LOG_VERBOSE, "segment:'%s' count:%d ended\n",
           seg->avf->url, seg->segment_count);
    seg->segment_count++;

    if (seg->increment_tc) {
        tcr = av_dict_get(s->metadata, "timecode", ((void*)0), 0);
        if (tcr) {

            for (i = 0; i < s->nb_streams; i++) {
                if (s->streams[i]->codecpar->codec_type == AVMEDIA_TYPE_VIDEO) {
                    rate = s->streams[i]->avg_frame_rate;
                    err = av_timecode_init_from_string(&tc, rate, tcr->value, s);
                    if (err < 0) {
                        av_log(s, AV_LOG_WARNING, "Could not increment global timecode, error occurred during timecode creation.\n");
                        break;
                    }
                    tc.start += (int)((seg->cur_entry.end_time - seg->cur_entry.start_time) * av_q2d(rate));
                    av_dict_set(&s->metadata, "timecode",
                                av_timecode_make_string(&tc, buf, 0), 0);
                    break;
                }
            }
        } else {
            av_log(s, AV_LOG_WARNING, "Could not increment global timecode, no global timecode metadata found.\n");
        }
        for (i = 0; i < s->nb_streams; i++) {
            if (s->streams[i]->codecpar->codec_type == AVMEDIA_TYPE_VIDEO) {
                char st_buf[AV_TIMECODE_STR_SIZE];
                AVTimecode st_tc;
                AVRational st_rate = s->streams[i]->avg_frame_rate;
                AVDictionaryEntry *st_tcr = av_dict_get(s->streams[i]->metadata, "timecode", ((void*)0), 0);
                if (st_tcr) {
                    if ((av_timecode_init_from_string(&st_tc, st_rate, st_tcr->value, s) < 0)) {
                        av_log(s, AV_LOG_WARNING, "Could not increment stream %d timecode, error occurred during timecode creation.\n", i);
                        continue;
                    }
                st_tc.start += (int)((seg->cur_entry.end_time - seg->cur_entry.start_time) * av_q2d(st_rate));
                av_dict_set(&s->streams[i]->metadata, "timecode", av_timecode_make_string(&st_tc, st_buf, 0), 0);
                }
            }
        }
    }

end:
    ff_format_io_close(oc, &oc->pb);

    return ret;
}
