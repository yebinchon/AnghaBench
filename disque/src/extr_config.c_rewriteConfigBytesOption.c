
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rewriteConfigState {int dummy; } ;
typedef int sds ;
typedef int buf ;


 int rewriteConfigFormatMemory (char*,int,long long) ;
 int rewriteConfigRewriteLine (struct rewriteConfigState*,char*,int ,int) ;
 int sdscatprintf (int ,char*,char*,char*) ;
 int sdsempty () ;

void rewriteConfigBytesOption(struct rewriteConfigState *state, char *option, long long value, long long defvalue) {
    char buf[64];
    int force = value != defvalue;
    sds line;

    rewriteConfigFormatMemory(buf,sizeof(buf),value);
    line = sdscatprintf(sdsempty(),"%s %s",option,buf);
    rewriteConfigRewriteLine(state,option,line,force);
}
