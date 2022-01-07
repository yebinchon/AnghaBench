
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int argc; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_14__ {int * configfile; } ;
struct TYPE_13__ {int ok; } ;
struct TYPE_11__ {scalar_t__ ptr; } ;


 int LL_WARNING ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyError (TYPE_2__*,char*) ;
 int addReplyErrorFormat (TYPE_2__*,char*,char*) ;
 int configGetCommand (TYPE_2__*) ;
 int configSetCommand (TYPE_2__*) ;
 int errno ;
 int resetCommandTableStats () ;
 int resetServerStats () ;
 int rewriteConfig (int *) ;
 TYPE_4__ server ;
 int serverLog (int ,char*,...) ;
 TYPE_3__ shared ;
 int strcasecmp (scalar_t__,char*) ;
 char* strerror (int ) ;

void configCommand(client *c) {
    if (!strcasecmp(c->argv[1]->ptr,"set")) {
        if (c->argc != 4) goto badarity;
        configSetCommand(c);
    } else if (!strcasecmp(c->argv[1]->ptr,"get")) {
        if (c->argc != 3) goto badarity;
        configGetCommand(c);
    } else if (!strcasecmp(c->argv[1]->ptr,"resetstat")) {
        if (c->argc != 2) goto badarity;
        resetServerStats();
        resetCommandTableStats();
        addReply(c,shared.ok);
    } else if (!strcasecmp(c->argv[1]->ptr,"rewrite")) {
        if (c->argc != 2) goto badarity;
        if (server.configfile == ((void*)0)) {
            addReplyError(c,"The server is running without a config file");
            return;
        }
        if (rewriteConfig(server.configfile) == -1) {
            serverLog(LL_WARNING,"CONFIG REWRITE failed: %s", strerror(errno));
            addReplyErrorFormat(c,"Rewriting config file: %s", strerror(errno));
        } else {
            serverLog(LL_WARNING,"CONFIG REWRITE executed with success.");
            addReply(c,shared.ok);
        }
    } else {
        addReplyError(c,
            "CONFIG subcommand must be one of GET, SET, RESETSTAT, REWRITE");
    }
    return;

badarity:
    addReplyErrorFormat(c,"Wrong number of arguments for CONFIG %s",
        (char*) c->argv[1]->ptr);
}
