
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** cvec; int len; } ;
typedef TYPE_1__ linenoiseCompletions ;


 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 char** realloc (char**,int) ;
 size_t strlen (char const*) ;

void linenoiseAddCompletion(linenoiseCompletions *lc, const char *str) {
    size_t len = strlen(str);
    char *copy, **cvec;

    copy = malloc(len+1);
    if (copy == ((void*)0)) return;
    memcpy(copy,str,len+1);
    cvec = realloc(lc->cvec,sizeof(char*)*(lc->len+1));
    if (cvec == ((void*)0)) {
        free(copy);
        return;
    }
    lc->cvec = cvec;
    lc->cvec[lc->len++] = copy;
}
