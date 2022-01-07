
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int redisReply ;
struct TYPE_7__ {int err; char* errstr; } ;
typedef TYPE_1__ redisContext ;
struct TYPE_8__ {int hostport; int hostip; } ;


 int REDIS_ERR_EOF ;
 int REDIS_ERR_IO ;
 int assert (int) ;
 TYPE_6__ config ;
 TYPE_1__* context ;
 int exit (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 int printf (char*,...) ;
 int * redisCommand (TYPE_1__*,char*) ;
 TYPE_1__* redisConnect (int ,int ) ;
 int redisFree (TYPE_1__*) ;
 int stderr ;
 int stdout ;
 int usleep (int) ;

__attribute__((used)) static redisReply *reconnectingInfo(void) {
    redisContext *c = context;
    redisReply *reply = ((void*)0);
    int tries = 0;

    assert(!c->err);
    while(reply == ((void*)0)) {
        while (c->err & (REDIS_ERR_IO | REDIS_ERR_EOF)) {
            printf("Reconnecting (%d)...\r", ++tries);
            fflush(stdout);

            redisFree(c);
            c = redisConnect(config.hostip,config.hostport);
            usleep(1000000);
        }

        reply = redisCommand(c,"INFO");
        if (c->err && !(c->err & (REDIS_ERR_IO | REDIS_ERR_EOF))) {
            fprintf(stderr, "Error: %s\n", c->errstr);
            exit(1);
        } else if (tries > 0) {
            printf("\n");
        }
    }

    context = c;
    return reply;
}
