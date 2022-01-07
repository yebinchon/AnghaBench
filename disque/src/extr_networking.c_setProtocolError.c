
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sds ;
struct TYPE_5__ {int querybuf; int flags; } ;
typedef TYPE_1__ client ;
struct TYPE_6__ {scalar_t__ verbosity; } ;


 int CLIENT_CLOSE_AFTER_REPLY ;
 scalar_t__ LL_VERBOSE ;
 int catClientInfoString (int ,TYPE_1__*) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int sdsrange (int ,int,int) ;
 TYPE_3__ server ;
 int serverLog (scalar_t__,char*,int ) ;

__attribute__((used)) static void setProtocolError(client *c, int pos) {
    if (server.verbosity <= LL_VERBOSE) {
        sds client = catClientInfoString(sdsempty(),c);
        serverLog(LL_VERBOSE,
            "Protocol error from client: %s", client);
        sdsfree(client);
    }
    c->flags |= CLIENT_CLOSE_AFTER_REPLY;
    sdsrange(c->querybuf,pos,-1);
}
