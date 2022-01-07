
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rewriteConfigState {int has_tail; int * lines; scalar_t__ numlines; void* rewritten; void* option_to_line; } ;
typedef char* sds ;
typedef int FILE ;


 int CONFIG_MAX_LINE ;
 int DISQUE_CONFIG_REWRITE_SIGNATURE ;
 scalar_t__ ENOENT ;
 void* dictCreate (int *,int *) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int optionSetDictType ;
 int optionToLineDictType ;
 int rewriteConfigAddLineNumberToOption (struct rewriteConfigState*,char*,int) ;
 int rewriteConfigAppendLine (struct rewriteConfigState*,char*) ;
 char* sdscatsds (char*,char*) ;
 int sdsfree (char*) ;
 int sdsfreesplitres (char**,int) ;
 char* sdsnew (char*) ;
 char** sdssplitargs (char*,int*) ;
 int sdstolower (char*) ;
 char* sdstrim (char*,char*) ;
 int strcmp (char*,int ) ;
 struct rewriteConfigState* zmalloc (int) ;

struct rewriteConfigState *rewriteConfigReadOldFile(char *path) {
    FILE *fp = fopen(path,"r");
    struct rewriteConfigState *state = zmalloc(sizeof(*state));
    char buf[CONFIG_MAX_LINE+1];
    int linenum = -1;

    if (fp == ((void*)0) && errno != ENOENT) return ((void*)0);

    state->option_to_line = dictCreate(&optionToLineDictType,((void*)0));
    state->rewritten = dictCreate(&optionSetDictType,((void*)0));
    state->numlines = 0;
    state->lines = ((void*)0);
    state->has_tail = 0;
    if (fp == ((void*)0)) return state;


    while(fgets(buf,CONFIG_MAX_LINE+1,fp) != ((void*)0)) {
        int argc;
        sds *argv;
        sds line = sdstrim(sdsnew(buf),"\r\n\t ");

        linenum++;


        if (line[0] == '#' || line[0] == '\0') {
            if (!state->has_tail && !strcmp(line,DISQUE_CONFIG_REWRITE_SIGNATURE))
                state->has_tail = 1;
            rewriteConfigAppendLine(state,line);
            continue;
        }


        argv = sdssplitargs(line,&argc);
        if (argv == ((void*)0)) {



            sds aux = sdsnew("# ??? ");
            aux = sdscatsds(aux,line);
            sdsfree(line);
            rewriteConfigAppendLine(state,aux);
            continue;
        }

        sdstolower(argv[0]);



        rewriteConfigAppendLine(state,line);
        rewriteConfigAddLineNumberToOption(state,argv[0],linenum);

        sdsfreesplitres(argv,argc);
    }
    fclose(fp);
    return state;
}
