
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sds ;
typedef int linenoiseCompletions ;
struct TYPE_2__ {int type; char* full; } ;


 int CLI_HELP_COMMAND ;
 int CLI_HELP_GROUP ;
 TYPE_1__* helpEntries ;
 int helpEntriesLen ;
 scalar_t__ isspace (char const) ;
 int linenoiseAddCompletion (int *,int ) ;
 int sdscat (int ,char*) ;
 int sdsfree (int ) ;
 int sdsnewlen (char const*,size_t) ;
 size_t strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char*,size_t) ;

__attribute__((used)) static void completionCallback(const char *buf, linenoiseCompletions *lc) {
    size_t startpos = 0;
    int mask;
    int i;
    size_t matchlen;
    sds tmp;

    if (strncasecmp(buf,"help ",5) == 0) {
        startpos = 5;
        while (isspace(buf[startpos])) startpos++;
        mask = CLI_HELP_COMMAND | CLI_HELP_GROUP;
    } else {
        mask = CLI_HELP_COMMAND;
    }

    for (i = 0; i < helpEntriesLen; i++) {
        if (!(helpEntries[i].type & mask)) continue;

        matchlen = strlen(buf+startpos);
        if (strncasecmp(buf+startpos,helpEntries[i].full,matchlen) == 0) {
            tmp = sdsnewlen(buf,startpos);
            tmp = sdscat(tmp,helpEntries[i].full);
            linenoiseAddCompletion(lc,tmp);
            sdsfree(tmp);
        }
    }
}
