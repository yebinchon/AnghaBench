
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static void
_os_log_parse_annotated(char *annotated, const char **visibility, const char **library, const char **type)
{
    char *values[3] = { ((void*)0) };
    int cnt = 0;
    int idx = 0;

    for (; cnt < 3;) {
        char *token = strsep(&annotated, ", {}");
        if (token == ((void*)0)) {
            break;
        }

        if (*token == '\0') {
            continue;
        }

        values[cnt++] = token;
    }

    if ((cnt > 0) && (!strcmp(values[0], "public") || !strcmp(values[0], "private"))) {
        if (visibility != ((void*)0)) {
            (*visibility) = values[0];
        }

        idx++;
    }

    if (idx < cnt && (library != ((void*)0)) && (type != ((void*)0))) {
        char *decoder = values[idx];

        for (cnt = 0; cnt < 3; ) {
            char *token = strsep(&decoder, ": {}");
            if (token == ((void*)0)) {
                break;
            }

            if (*token == '\0') {
                continue;
            }

            values[cnt++] = token;
        }

        if (cnt == 2) {
            (*library) = values[0];
            (*type) = values[1];
        }

        if (cnt == 1) {
            (*library) = "builtin";
            (*type) = values[0];
        }
    }
}
