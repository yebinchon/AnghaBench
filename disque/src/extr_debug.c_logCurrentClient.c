
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sds ;
struct TYPE_7__ {scalar_t__ ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_8__ {int argc; int * argv; } ;
typedef TYPE_2__ client ;
struct TYPE_9__ {TYPE_2__* current_client; } ;


 int LL_WARNING ;
 int catClientInfoString (int ,TYPE_2__*) ;
 int decrRefCount (TYPE_1__*) ;
 TYPE_1__* getDecodedObject (int ) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 TYPE_3__ server ;
 int serverLog (int ,char*,...) ;

void logCurrentClient(void) {
    if (server.current_client == ((void*)0)) return;

    client *cc = server.current_client;
    sds client;
    int j;

    serverLog(LL_WARNING, "--- CURRENT CLIENT INFO");
    client = catClientInfoString(sdsempty(),cc);
    serverLog(LL_WARNING,"client: %s", client);
    sdsfree(client);
    for (j = 0; j < cc->argc; j++) {
        robj *decoded;

        decoded = getDecodedObject(cc->argv[j]);
        serverLog(LL_WARNING,"argv[%d]: '%s'", j, (char*)decoded->ptr);
        decrRefCount(decoded);
    }
}
