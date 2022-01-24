#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_14__ {TYPE_2__* st; } ;
struct TYPE_13__ {scalar_t__ graph; } ;
struct TYPE_12__ {TYPE_3__* enc_ctx; } ;
struct TYPE_11__ {int debug; } ;
struct TYPE_10__ {TYPE_1__* codec; } ;
struct TYPE_9__ {int debug; } ;
typedef  TYPE_4__ OutputStream ;
typedef  TYPE_5__ FilterGraph ;

/* Variables and functions */
 int AVERROR_EXIT ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AVFILTER_CMD_FLAG_ONE ; 
 scalar_t__ AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FF_DEBUG_DCT_COEFF ; 
 int FF_DEBUG_VIS_MB_TYPE ; 
 int FF_DEBUG_VIS_QP ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,char*,char*,char*,int /*<<< orphan*/ ,double) ; 
 int FUNC5 (scalar_t__,char*,char*,char*,char*,int,int /*<<< orphan*/ ) ; 
 int do_hex_dump ; 
 int do_pkt_dump ; 
 TYPE_5__** filtergraphs ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_7__** input_streams ; 
 int nb_filtergraphs ; 
 int nb_input_streams ; 
 int nb_output_streams ; 
 TYPE_4__** output_streams ; 
 int qp_hist ; 
 int FUNC7 () ; 
 scalar_t__ received_nb_signals ; 
 int /*<<< orphan*/  run_as_daemon ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC10(int64_t cur_time)
{
    int i, ret, key;
    static int64_t last_time;
    if (received_nb_signals)
        return AVERROR_EXIT;
    /* read_key() returns 0 on EOF */
    if(cur_time - last_time >= 100000 && !run_as_daemon){
        key =  FUNC7();
        last_time = cur_time;
    }else
        key = -1;
    if (key == 'q')
        return AVERROR_EXIT;
    if (key == '+') FUNC3(FUNC2()+10);
    if (key == '-') FUNC3(FUNC2()-10);
    if (key == 's') qp_hist     ^= 1;
    if (key == 'h'){
        if (do_hex_dump){
            do_hex_dump = do_pkt_dump = 0;
        } else if(do_pkt_dump){
            do_hex_dump = 1;
        } else
            do_pkt_dump = 1;
        FUNC3(AV_LOG_DEBUG);
    }
    if (key == 'c' || key == 'C'){
        char buf[4096], target[64], command[256], arg[256] = {0};
        double time;
        int k, n = 0;
        FUNC6(stderr, "\nEnter command: <target>|all <time>|-1 <command>[ <argument>]\n");
        i = 0;
        FUNC8(1);
        while ((k = FUNC7()) != '\n' && k != '\r' && i < sizeof(buf)-1)
            if (k > 0)
                buf[i++] = k;
        buf[i] = 0;
        FUNC8(0);
        FUNC6(stderr, "\n");
        if (k > 0 &&
            (n = FUNC9(buf, "%63[^ ] %lf %255[^ ] %255[^\n]", target, &time, command, arg)) >= 3) {
            FUNC1(NULL, AV_LOG_DEBUG, "Processing command target:%s time:%f command:%s arg:%s",
                   target, time, command, arg);
            for (i = 0; i < nb_filtergraphs; i++) {
                FilterGraph *fg = filtergraphs[i];
                if (fg->graph) {
                    if (time < 0) {
                        ret = FUNC5(fg->graph, target, command, arg, buf, sizeof(buf),
                                                          key == 'c' ? AVFILTER_CMD_FLAG_ONE : 0);
                        FUNC6(stderr, "Command reply for stream %d: ret:%d res:\n%s", i, ret, buf);
                    } else if (key == 'c') {
                        FUNC6(stderr, "Queuing commands only on filters supporting the specific command is unsupported\n");
                        ret = AVERROR_PATCHWELCOME;
                    } else {
                        ret = FUNC4(fg->graph, target, command, arg, 0, time);
                        if (ret < 0)
                            FUNC6(stderr, "Queuing command failed with error %s\n", FUNC0(ret));
                    }
                }
            }
        } else {
            FUNC1(NULL, AV_LOG_ERROR,
                   "Parse error, at least 3 arguments were expected, "
                   "only %d given in string '%s'\n", n, buf);
        }
    }
    if (key == 'd' || key == 'D'){
        int debug=0;
        if(key == 'D') {
            debug = input_streams[0]->st->codec->debug<<1;
            if(!debug) debug = 1;
            while(debug & (FF_DEBUG_DCT_COEFF
#if FF_API_DEBUG_MV
                                             |FF_DEBUG_VIS_QP|FF_DEBUG_VIS_MB_TYPE
#endif
                                                                                  )) //unsupported, would just crash
                debug += debug;
        }else{
            char buf[32];
            int k = 0;
            i = 0;
            FUNC8(1);
            while ((k = FUNC7()) != '\n' && k != '\r' && i < sizeof(buf)-1)
                if (k > 0)
                    buf[i++] = k;
            buf[i] = 0;
            FUNC8(0);
            FUNC6(stderr, "\n");
            if (k <= 0 || FUNC9(buf, "%d", &debug)!=1)
                FUNC6(stderr,"error parsing debug value\n");
        }
        for(i=0;i<nb_input_streams;i++) {
            input_streams[i]->st->codec->debug = debug;
        }
        for(i=0;i<nb_output_streams;i++) {
            OutputStream *ost = output_streams[i];
            ost->enc_ctx->debug = debug;
        }
        if(debug) FUNC3(AV_LOG_DEBUG);
        FUNC6(stderr,"debug=%d\n", debug);
    }
    if (key == '?'){
        FUNC6(stderr, "key    function\n"
                        "?      show this help\n"
                        "+      increase verbosity\n"
                        "-      decrease verbosity\n"
                        "c      Send command to first matching filter supporting it\n"
                        "C      Send/Queue command to all matching filters\n"
                        "D      cycle through available debug modes\n"
                        "h      dump packets/hex press to cycle through the 3 states\n"
                        "q      quit\n"
                        "s      Show QP histogram\n"
        );
    }
    return 0;
}