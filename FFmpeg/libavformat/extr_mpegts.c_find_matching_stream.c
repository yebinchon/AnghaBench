
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int nb_streams; TYPE_3__** streams; } ;
struct TYPE_10__ {unsigned int program_num; int stream_identifier; int pmt_stream_idx; int id; TYPE_1__* codecpar; } ;
struct TYPE_9__ {TYPE_4__* stream; } ;
struct TYPE_8__ {int codec_type; } ;
typedef TYPE_2__ MpegTSContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;


 int AV_LOG_VERBOSE ;
 int av_get_media_type_string (int ) ;
 int av_log (TYPE_4__*,int ,char*,int ,int,int ,int) ;

__attribute__((used)) static AVStream *find_matching_stream(MpegTSContext *ts, int pid, unsigned int programid,
                                      int stream_identifier, int pmt_stream_idx)
{
    AVFormatContext *s = ts->stream;
    int i;
    AVStream *found = ((void*)0);

    for (i = 0; i < s->nb_streams; i++) {
        AVStream *st = s->streams[i];
        if (st->program_num != programid)
            continue;
        if (stream_identifier != -1) {
            if (st->stream_identifier == stream_identifier+1) {
                found = st;
                break;
            }
        } else if (st->pmt_stream_idx == pmt_stream_idx) {
            found = st;
            break;
        }
    }

    if (found) {
        av_log(ts->stream, AV_LOG_VERBOSE,
               "re-using existing %s stream %d (pid=0x%x) for new pid=0x%x\n",
               av_get_media_type_string(found->codecpar->codec_type),
               i, found->id, pid);
    }

    return found;
}
