
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 int strcasecmp (char*,scalar_t__) ;
 scalar_t__* unsupported_term ;

__attribute__((used)) static int isUnsupportedTerm(void) {
    char *term = getenv("TERM");
    int j;

    if (term == ((void*)0)) return 0;
    for (j = 0; unsupported_term[j]; j++)
        if (!strcasecmp(term,unsupported_term[j])) return 1;
    return 0;
}
