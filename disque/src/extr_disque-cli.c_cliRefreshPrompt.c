
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* hostsocket; int dbnum; scalar_t__ last_cmd_type; scalar_t__ prompt; int hostip; int hostport; } ;


 scalar_t__ REDIS_REPLY_ERROR ;
 TYPE_1__ config ;
 int snprintf (scalar_t__,int,char*,...) ;
 scalar_t__ strchr (int ,char) ;

__attribute__((used)) static void cliRefreshPrompt(void) {
    int len;

    if (config.hostsocket != ((void*)0))
        len = snprintf(config.prompt,sizeof(config.prompt),"disque %s",
                       config.hostsocket);
    else
        len = snprintf(config.prompt,sizeof(config.prompt),
                       strchr(config.hostip,':') ? "[%s]:%d" : "%s:%d",
                       config.hostip, config.hostport);

    if (config.dbnum != 0 && config.last_cmd_type != REDIS_REPLY_ERROR)
        len += snprintf(config.prompt+len,sizeof(config.prompt)-len,"[%d]",
            config.dbnum);
    snprintf(config.prompt+len,sizeof(config.prompt)-len,"> ");
}
