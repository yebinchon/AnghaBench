
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HOOK_MALLOC_FAILED ;
 char* malloc (scalar_t__) ;
 int sprintf (char*,char*,...) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 char* strrchr (char*,char) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static char * _mdns_mangle_name(char* in) {
    char *p = strrchr(in, '-');
    int suffix = 0;
    if (p == ((void*)0)) {

        suffix = 2;
    } else {
        char *endp = ((void*)0);
        suffix = strtol(p + 1, &endp, 10);
        if (*endp != 0) {

            suffix = 2;
            p = ((void*)0);
        }
    }
    char *ret;
    if (p == ((void*)0)) {

        ret = malloc(strlen(in) + 3);
        if (ret == ((void*)0)) {
            HOOK_MALLOC_FAILED;
            return ((void*)0);
        }
        sprintf(ret, "%s-2", in);
    } else {
        ret = malloc(strlen(in) + 2);
        if (ret == ((void*)0)) {
            HOOK_MALLOC_FAILED;
            return ((void*)0);
        }
        strcpy(ret, in);
        int baseLen = p - in;

        sprintf(ret + baseLen, "-%d", suffix + 1);
    }
    return ret;
}
