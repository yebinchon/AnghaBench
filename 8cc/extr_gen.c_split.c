
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** malloc (int) ;

__attribute__((used)) static char **split(char *buf) {
    char *p = buf;
    int len = 1;
    while (*p) {
        if (p[0] == '\r' && p[1] == '\n') {
            len++;
            p += 2;
            continue;
        }
        if (p[0] == '\r' || p[0] == '\n')
            len++;
        p++;
    }
    p = buf;
    char **r = malloc(sizeof(char *) * len + 1);
    int i = 0;
    while (*p) {
        if (p[0] == '\r' && p[1] == '\n') {
            p[0] = '\0';
            p += 2;
            r[i++] = p;
            continue;
        }
        if (p[0] == '\r' || p[0] == '\n') {
            p[0] = '\0';
            r[i++] = p + 1;
        }
        p++;
    }
    r[i] = ((void*)0);
    return r;
}
