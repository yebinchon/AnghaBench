
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int sds ;
struct TYPE_6__ {int reply_bytes; int flags; } ;
typedef TYPE_1__ client ;


 int CLIENT_CLOSE_ASAP ;
 int LL_WARNING ;
 int SIZE_MAX ;
 int catClientInfoString (int ,TYPE_1__*) ;
 scalar_t__ checkClientOutputBufferLimits (TYPE_1__*) ;
 int freeClientAsync (TYPE_1__*) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int serverAssert (int) ;
 int serverLog (int ,char*,int ) ;

void asyncCloseClientOnOutputBufferLimitReached(client *c) {
    serverAssert(c->reply_bytes < SIZE_MAX-(1024*64));
    if (c->reply_bytes == 0 || c->flags & CLIENT_CLOSE_ASAP) return;
    if (checkClientOutputBufferLimits(c)) {
        sds client = catClientInfoString(sdsempty(),c);

        freeClientAsync(c);
        serverLog(LL_WARNING,"Client %s scheduled to be closed ASAP for overcoming of output buffer limits.", client);
        sdsfree(client);
    }
}
