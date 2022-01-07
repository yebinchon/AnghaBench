
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rewriteConfigState {int dummy; } ;
typedef int soft ;
typedef int sds ;
typedef int hard ;
struct TYPE_6__ {scalar_t__ hard_limit_bytes; scalar_t__ soft_limit_bytes; scalar_t__ soft_limit_seconds; } ;
struct TYPE_5__ {TYPE_1__* client_obuf_limits; } ;
struct TYPE_4__ {scalar_t__ hard_limit_bytes; scalar_t__ soft_limit_bytes; scalar_t__ soft_limit_seconds; } ;


 int CLIENT_TYPE_COUNT ;
 TYPE_3__* clientBufferLimitsDefaults ;
 int getClientTypeName (int) ;
 int rewriteConfigFormatMemory (char*,int,scalar_t__) ;
 int rewriteConfigRewriteLine (struct rewriteConfigState*,char*,int ,int) ;
 int sdscatprintf (int ,char*,char*,int ,char*,char*,long) ;
 int sdsempty () ;
 TYPE_2__ server ;

void rewriteConfigClientoutputbufferlimitOption(struct rewriteConfigState *state) {
    int j;
    char *option = "client-output-buffer-limit";

    for (j = 0; j < CLIENT_TYPE_COUNT; j++) {
        int force = (server.client_obuf_limits[j].hard_limit_bytes !=
                    clientBufferLimitsDefaults[j].hard_limit_bytes) ||
                    (server.client_obuf_limits[j].soft_limit_bytes !=
                    clientBufferLimitsDefaults[j].soft_limit_bytes) ||
                    (server.client_obuf_limits[j].soft_limit_seconds !=
                    clientBufferLimitsDefaults[j].soft_limit_seconds);
        sds line;
        char hard[64], soft[64];

        rewriteConfigFormatMemory(hard,sizeof(hard),
                server.client_obuf_limits[j].hard_limit_bytes);
        rewriteConfigFormatMemory(soft,sizeof(soft),
                server.client_obuf_limits[j].soft_limit_bytes);

        line = sdscatprintf(sdsempty(),"%s %s %s %s %ld",
                option, getClientTypeName(j), hard, soft,
                (long) server.client_obuf_limits[j].soft_limit_seconds);
        rewriteConfigRewriteLine(state,option,line,force);
    }
}
