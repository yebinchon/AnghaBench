#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  char* sds ;
struct TYPE_10__ {scalar_t__ type; char* str; } ;
typedef  TYPE_1__ redisReply ;
struct TYPE_12__ {scalar_t__ last_cmd_type; char* hostip; int hostport; int cluster_reissue_command; scalar_t__ output; scalar_t__ interactive; scalar_t__ cluster_mode; scalar_t__ shutdown; } ;
struct TYPE_11__ {scalar_t__ err; } ;

/* Variables and functions */
 scalar_t__ ECONNRESET ; 
 scalar_t__ EPIPE ; 
 scalar_t__ OUTPUT_CSV ; 
 scalar_t__ OUTPUT_RAW ; 
 scalar_t__ OUTPUT_STANDARD ; 
 int REDIS_ERR ; 
 scalar_t__ REDIS_ERR_EOF ; 
 scalar_t__ REDIS_ERR_IO ; 
 scalar_t__ REDIS_OK ; 
 scalar_t__ REDIS_REPLY_ERROR ; 
 void* FUNC0 (char*) ; 
 char* FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (TYPE_1__*) ; 
 char* FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_6__ config ; 
 TYPE_2__* context ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*,void**) ; 
 char* FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 char* FUNC15 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC16 (char*,char) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,int) ; 

__attribute__((used)) static int FUNC19(int output_raw_strings) {
    void *_reply;
    redisReply *reply;
    sds out = NULL;
    int output = 1;

    if (FUNC11(context,&_reply) != REDIS_OK) {
        if (config.shutdown) {
            FUNC10(context);
            context = NULL;
            return REDIS_OK;
        }
        if (config.interactive) {
            /* Filter cases where we should reconnect */
            if (context->err == REDIS_ERR_IO &&
                (errno == ECONNRESET || errno == EPIPE))
                return REDIS_ERR;
            if (context->err == REDIS_ERR_EOF)
                return REDIS_ERR;
        }
        FUNC4();
        FUNC6(1);
        return REDIS_ERR; /* avoid compiler warning */
    }

    reply = (redisReply*)_reply;

    config.last_cmd_type = reply->type;

    /* Check if we need to connect to a different node and reissue the
     * request. */
    if (config.cluster_mode && reply->type == REDIS_REPLY_ERROR &&
        (!FUNC18(reply->str,"MOVED",5) || !FUNC17(reply->str,"ASK")))
    {
        char *p = reply->str, *s;
        int slot;

        output = 0;
        /* Comments show the position of the pointer as:
         *
         * [S] for pointer 's'
         * [P] for pointer 'p'
         */
        s = FUNC16(p,' ');      /* MOVED[S]3999 127.0.0.1:6381 */
        p = FUNC16(s+1,' ');    /* MOVED[S]3999[P]127.0.0.1:6381 */
        *p = '\0';
        slot = FUNC0(s+1);
        s = FUNC16(p+1,':');    /* MOVED 3999[P]127.0.0.1[S]6381 */
        *s = '\0';
        FUNC13(config.hostip);
        config.hostip = FUNC15(p+1);
        config.hostport = FUNC0(s+1);
        if (config.interactive)
            FUNC9("-> Redirected to slot [%d] located at %s:%d\n",
                slot, config.hostip, config.hostport);
        config.cluster_reissue_command = 1;
        FUNC5();
    }

    if (output) {
        if (output_raw_strings) {
            out = FUNC2(reply);
        } else {
            if (config.output == OUTPUT_RAW) {
                out = FUNC2(reply);
                out = FUNC12(out,"\n");
            } else if (config.output == OUTPUT_STANDARD) {
                out = FUNC3(reply,"");
            } else if (config.output == OUTPUT_CSV) {
                out = FUNC1(reply);
                out = FUNC12(out,"\n");
            }
        }
        FUNC8(out,FUNC14(out),1,stdout);
        FUNC13(out);
    }
    FUNC7(reply);
    return REDIS_OK;
}