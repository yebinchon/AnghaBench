
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ aof_state; scalar_t__ configfile; scalar_t__ aof_enqueue_jobs_once; int aof_filename; } ;


 scalar_t__ AOF_ON ;
 scalar_t__ C_OK ;
 int LL_NOTICE ;
 int LL_WARNING ;
 int errno ;
 scalar_t__ loadAppendOnlyFile (int ) ;
 int rewriteConfig (scalar_t__) ;
 TYPE_1__ server ;
 int serverLog (int ,char*,float) ;
 float strerror (int ) ;
 long long ustime () ;

void loadDataFromDisk(void) {
    long long start = ustime();
    if (server.aof_state == AOF_ON || server.aof_enqueue_jobs_once) {
        if (loadAppendOnlyFile(server.aof_filename) == C_OK)
            serverLog(LL_NOTICE,"DB loaded from append only file: %.3f seconds",(float)(ustime()-start)/1000000);



        if (server.aof_enqueue_jobs_once && server.configfile) {
            server.aof_enqueue_jobs_once = 0;
            if (rewriteConfig(server.configfile) == -1) {
                serverLog(LL_WARNING,
                    "CONFIG REWRITE failed "
                    "(executed to turn off aof-enqueue-jobs-once): %s",
                    strerror(errno));
            }
        }
    }
}
