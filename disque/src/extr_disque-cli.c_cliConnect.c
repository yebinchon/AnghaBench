
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* hostsocket; char* hostip; int hostport; } ;
struct TYPE_6__ {char* errstr; int fd; scalar_t__ err; } ;


 int DISQUE_CLI_KEEPALIVE_INTERVAL ;
 int REDIS_ERR ;
 scalar_t__ REDIS_OK ;
 int anetKeepAlive (int *,int ,int ) ;
 scalar_t__ cliAuth () ;
 scalar_t__ cliSelect () ;
 TYPE_5__ config ;
 TYPE_1__* context ;
 int fprintf (int ,char*,...) ;
 TYPE_1__* redisConnect (char*,int) ;
 TYPE_1__* redisConnectUnix (char*) ;
 int redisFree (TYPE_1__*) ;
 int stderr ;

__attribute__((used)) static int cliConnect(int force) {
    if (context == ((void*)0) || force) {
        if (context != ((void*)0))
            redisFree(context);

        if (config.hostsocket == ((void*)0)) {
            context = redisConnect(config.hostip,config.hostport);
        } else {
            context = redisConnectUnix(config.hostsocket);
        }

        if (context->err) {
            fprintf(stderr,"Could not connect to Disque at ");
            if (config.hostsocket == ((void*)0))
                fprintf(stderr,"%s:%d: %s\n",config.hostip,config.hostport,context->errstr);
            else
                fprintf(stderr,"%s: %s\n",config.hostsocket,context->errstr);
            redisFree(context);
            context = ((void*)0);
            return REDIS_ERR;
        }





        anetKeepAlive(((void*)0), context->fd, DISQUE_CLI_KEEPALIVE_INTERVAL);


        if (cliAuth() != REDIS_OK)
            return REDIS_ERR;
        if (cliSelect() != REDIS_OK)
            return REDIS_ERR;
    }
    return REDIS_OK;
}
