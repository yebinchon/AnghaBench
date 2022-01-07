
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rewriteConfigState {int dummy; } ;
typedef int sds ;


 int rewriteConfigMarkAsProcessed (struct rewriteConfigState*,char*) ;
 int rewriteConfigRewriteLine (struct rewriteConfigState*,char*,int ,int) ;
 int sdscatlen (int ,char*,int) ;
 int sdscatrepr (int ,char*,int ) ;
 int sdsnew (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

void rewriteConfigStringOption(struct rewriteConfigState *state, char *option, char *value, char *defvalue) {
    int force = 1;
    sds line;



    if (value == ((void*)0)) {
        rewriteConfigMarkAsProcessed(state,option);
        return;
    }


    if (defvalue && strcmp(value,defvalue) == 0) force = 0;

    line = sdsnew(option);
    line = sdscatlen(line, " ", 1);
    line = sdscatrepr(line, value, strlen(value));

    rewriteConfigRewriteLine(state,option,line,force);
}
