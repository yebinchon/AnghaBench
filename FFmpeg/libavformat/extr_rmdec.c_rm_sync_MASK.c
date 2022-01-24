#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  void* int64_t ;
struct TYPE_8__ {int nb_streams; TYPE_2__** streams; int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_6__ {int remaining_len; int current_stream; } ;
typedef  TYPE_1__ RMDemuxContext ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 void* AV_NOPTS_VALUE ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s, int64_t *timestamp, int *flags, int *stream_index, int64_t *pos){
    RMDemuxContext *rm = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *st;
    uint32_t state=0xFFFFFFFF;

    while(!FUNC3(pb)){
        int len, num, i;
        int mlti_id;
        *pos= FUNC8(pb) - 3;
        if(rm->remaining_len > 0){
            num= rm->current_stream;
            mlti_id = 0;
            len= rm->remaining_len;
            *timestamp = AV_NOPTS_VALUE;
            *flags= 0;
        }else{
            state= (state<<8) + FUNC4(pb);

            if(state == FUNC1('I', 'N', 'D', 'X')){
                int n_pkts, expected_len;
                len = FUNC6(pb);
                FUNC7(pb, 2);
                n_pkts = FUNC6(pb);
                expected_len = 20 + n_pkts * 14;
                if (len == 20)
                    /* some files don't add index entries to chunk size... */
                    len = expected_len;
                else if (len != expected_len)
                    FUNC2(s, AV_LOG_WARNING,
                           "Index size %d (%d pkts) is wrong, should be %d.\n",
                           len, n_pkts, expected_len);
                len -= 14; // we already read part of the index header
                if(len<0)
                    continue;
                goto skip;
            } else if (state == FUNC1('D','A','T','A')) {
                FUNC2(s, AV_LOG_WARNING,
                       "DATA tag in middle of chunk, file may be broken.\n");
            }

            if(state > (unsigned)0xFFFF || state <= 12)
                continue;
            len=state - 12;
            state= 0xFFFFFFFF;

            num = FUNC5(pb);
            *timestamp = FUNC6(pb);
            mlti_id = (FUNC4(pb) >> 1) - 1;
            mlti_id = FUNC0(mlti_id, 0) << 16;
            *flags = FUNC4(pb); /* flags */
        }
        for(i=0;i<s->nb_streams;i++) {
            st = s->streams[i];
            if (mlti_id + num == st->id)
                break;
        }
        if (i == s->nb_streams) {
skip:
            /* skip packet if unknown number */
            FUNC7(pb, len);
            rm->remaining_len = 0;
            continue;
        }
        *stream_index= i;

        return len;
    }
    return -1;
}