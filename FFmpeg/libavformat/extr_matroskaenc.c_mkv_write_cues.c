
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_12__ {int has_cue; } ;
typedef TYPE_3__ mkv_track ;
struct TYPE_13__ {int num_entries; TYPE_5__* entries; } ;
typedef TYPE_4__ mkv_cues ;
struct TYPE_14__ {scalar_t__ pts; int stream_idx; scalar_t__ tracknum; scalar_t__ cluster_pos; scalar_t__ relative_pos; int duration; } ;
typedef TYPE_5__ mkv_cuepoint ;
typedef int int64_t ;
typedef int ebml_master ;
struct TYPE_15__ {TYPE_2__** streams; int * pb; int * priv_data; } ;
struct TYPE_11__ {TYPE_1__* codecpar; } ;
struct TYPE_10__ {scalar_t__ codec_type; } ;
typedef int MatroskaMuxContext ;
typedef int AVIOContext ;
typedef TYPE_6__ AVFormatContext ;


 scalar_t__ AVMEDIA_TYPE_SUBTITLE ;
 int MATROSKA_ID_CUECLUSTERPOSITION ;
 int MATROSKA_ID_CUEDURATION ;
 int MATROSKA_ID_CUERELATIVEPOSITION ;
 int MATROSKA_ID_CUES ;
 int MATROSKA_ID_CUETIME ;
 int MATROSKA_ID_CUETRACK ;
 int MATROSKA_ID_CUETRACKPOSITION ;
 int MATROSKA_ID_POINTENTRY ;
 int MAX_CUEPOINT_CONTENT_SIZE (int) ;
 int MAX_CUETRACKPOS_SIZE ;
 int av_assert0 (int) ;
 int avio_tell (int *) ;
 int end_ebml_master (int *,int ) ;
 int end_ebml_master_crc32 (int *,int **,int *) ;
 int put_ebml_uint (int *,int ,scalar_t__) ;
 int start_ebml_master (int *,int ,int ) ;
 int start_ebml_master_crc32 (int *,int **,int *,int ) ;

__attribute__((used)) static int64_t mkv_write_cues(AVFormatContext *s, mkv_cues *cues, mkv_track *tracks, int num_tracks)
{
    MatroskaMuxContext *mkv = s->priv_data;
    AVIOContext *dyn_cp, *pb = s->pb;
    int64_t currentpos;
    int i, j, ret;

    currentpos = avio_tell(pb);
    ret = start_ebml_master_crc32(pb, &dyn_cp, mkv, MATROSKA_ID_CUES);
    if (ret < 0)
        return ret;

    for (i = 0; i < cues->num_entries; i++) {
        ebml_master cuepoint, track_positions;
        mkv_cuepoint *entry = &cues->entries[i];
        uint64_t pts = entry->pts;
        int ctp_nb = 0;


        for (j = 0; j < num_tracks; j++)
            tracks[j].has_cue = 0;
        for (j = 0; j < cues->num_entries - i && entry[j].pts == pts; j++) {
            int idx = entry[j].stream_idx;

            av_assert0(idx >= 0 && idx < num_tracks);
            if (tracks[idx].has_cue && s->streams[idx]->codecpar->codec_type != AVMEDIA_TYPE_SUBTITLE)
                continue;
            tracks[idx].has_cue = 1;
            ctp_nb ++;
        }

        cuepoint = start_ebml_master(dyn_cp, MATROSKA_ID_POINTENTRY, MAX_CUEPOINT_CONTENT_SIZE(ctp_nb));
        put_ebml_uint(dyn_cp, MATROSKA_ID_CUETIME, pts);



        for (j = 0; j < num_tracks; j++)
            tracks[j].has_cue = 0;
        for (j = 0; j < cues->num_entries - i && entry[j].pts == pts; j++) {
            int idx = entry[j].stream_idx;

            if (tracks[idx].has_cue && s->streams[idx]->codecpar->codec_type != AVMEDIA_TYPE_SUBTITLE)
                continue;
            tracks[idx].has_cue = 1;
            track_positions = start_ebml_master(dyn_cp, MATROSKA_ID_CUETRACKPOSITION, MAX_CUETRACKPOS_SIZE);
            put_ebml_uint(dyn_cp, MATROSKA_ID_CUETRACK , entry[j].tracknum );
            put_ebml_uint(dyn_cp, MATROSKA_ID_CUECLUSTERPOSITION , entry[j].cluster_pos);
            put_ebml_uint(dyn_cp, MATROSKA_ID_CUERELATIVEPOSITION, entry[j].relative_pos);
            if (entry[j].duration != -1)
                put_ebml_uint(dyn_cp, MATROSKA_ID_CUEDURATION , entry[j].duration);
            end_ebml_master(dyn_cp, track_positions);
        }
        i += j - 1;
        end_ebml_master(dyn_cp, cuepoint);
    }
    end_ebml_master_crc32(pb, &dyn_cp, mkv);

    return currentpos;
}
