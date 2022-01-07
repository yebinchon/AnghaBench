
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef void* int64_t ;
struct TYPE_8__ {int nb_streams; TYPE_2__** streams; int * pb; TYPE_1__* priv_data; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_6__ {int remaining_len; int current_stream; } ;
typedef TYPE_1__ RMDemuxContext ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AV_LOG_WARNING ;
 void* AV_NOPTS_VALUE ;
 int FFMAX (int,int ) ;
 int MKBETAG (char,char,char,char) ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int avio_feof (int *) ;
 int avio_r8 (int *) ;
 int avio_rb16 (int *) ;
 void* avio_rb32 (int *) ;
 int avio_skip (int *,int) ;
 void* avio_tell (int *) ;

__attribute__((used)) static int rm_sync(AVFormatContext *s, int64_t *timestamp, int *flags, int *stream_index, int64_t *pos){
    RMDemuxContext *rm = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *st;
    uint32_t state=0xFFFFFFFF;

    while(!avio_feof(pb)){
        int len, num, i;
        int mlti_id;
        *pos= avio_tell(pb) - 3;
        if(rm->remaining_len > 0){
            num= rm->current_stream;
            mlti_id = 0;
            len= rm->remaining_len;
            *timestamp = AV_NOPTS_VALUE;
            *flags= 0;
        }else{
            state= (state<<8) + avio_r8(pb);

            if(state == MKBETAG('I', 'N', 'D', 'X')){
                int n_pkts, expected_len;
                len = avio_rb32(pb);
                avio_skip(pb, 2);
                n_pkts = avio_rb32(pb);
                expected_len = 20 + n_pkts * 14;
                if (len == 20)

                    len = expected_len;
                else if (len != expected_len)
                    av_log(s, AV_LOG_WARNING,
                           "Index size %d (%d pkts) is wrong, should be %d.\n",
                           len, n_pkts, expected_len);
                len -= 14;
                if(len<0)
                    continue;
                goto skip;
            } else if (state == MKBETAG('D','A','T','A')) {
                av_log(s, AV_LOG_WARNING,
                       "DATA tag in middle of chunk, file may be broken.\n");
            }

            if(state > (unsigned)0xFFFF || state <= 12)
                continue;
            len=state - 12;
            state= 0xFFFFFFFF;

            num = avio_rb16(pb);
            *timestamp = avio_rb32(pb);
            mlti_id = (avio_r8(pb) >> 1) - 1;
            mlti_id = FFMAX(mlti_id, 0) << 16;
            *flags = avio_r8(pb);
        }
        for(i=0;i<s->nb_streams;i++) {
            st = s->streams[i];
            if (mlti_id + num == st->id)
                break;
        }
        if (i == s->nb_streams) {
skip:

            avio_skip(pb, len);
            rm->remaining_len = 0;
            continue;
        }
        *stream_index= i;

        return len;
    }
    return -1;
}
