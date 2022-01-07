
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ sds ;
typedef int robj ;
struct TYPE_2__ {scalar_t__ aof_state; int aof_child_pid; int aof_buf; } ;


 scalar_t__ AOF_ON ;
 int aofRewriteBufferAppend (unsigned char*,int ) ;
 scalar_t__ catAppendOnlyGenericCommand (scalar_t__,int,int **) ;
 int sdscatlen (int ,scalar_t__,int ) ;
 scalar_t__ sdsempty () ;
 int sdsfree (scalar_t__) ;
 int sdslen (scalar_t__) ;
 TYPE_1__ server ;

void feedAppendOnlyFile(robj **argv, int argc) {
    sds buf = sdsempty();

    buf = catAppendOnlyGenericCommand(buf,argc,argv);




    if (server.aof_state == AOF_ON)
        server.aof_buf = sdscatlen(server.aof_buf,buf,sdslen(buf));





    if (server.aof_child_pid != -1)
        aofRewriteBufferAppend((unsigned char*)buf,sdslen(buf));

    sdsfree(buf);
}
