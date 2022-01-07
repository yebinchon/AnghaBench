
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINENOISE_MAX_LINE ;
 char* calloc (int,int ) ;
 int dumbmode ;
 int free (char*) ;
 int linenoiseDumb (char*,int ,char const*) ;
 int linenoiseRaw (char*,int ,char const*) ;
 int sanitize (char*) ;
 int strlen (char*) ;

char *linenoise(const char *prompt) {
    char *buf = calloc(1, LINENOISE_MAX_LINE);
    int count = 0;
    if (!dumbmode) {
        count = linenoiseRaw(buf, LINENOISE_MAX_LINE, prompt);
    } else {
        count = linenoiseDumb(buf, LINENOISE_MAX_LINE, prompt);
    }
    if (count > 0) {
        sanitize(buf);
        count = strlen(buf);
    }
    if (count <= 0) {
        free(buf);
        return ((void*)0);
    }
    return buf;
}
