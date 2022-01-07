
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINENOISE_MAX_LINE ;
 int fflush (int ) ;
 int * fgets (char*,int,int ) ;
 scalar_t__ isUnsupportedTerm () ;
 int linenoiseRaw (char*,int,char const*) ;
 int printf (char*,char const*) ;
 int stdin ;
 int stdout ;
 char* strdup (char*) ;
 size_t strlen (char*) ;

char *linenoise(const char *prompt) {
    char buf[LINENOISE_MAX_LINE];
    int count;

    if (isUnsupportedTerm()) {
        size_t len;

        printf("%s",prompt);
        fflush(stdout);
        if (fgets(buf,LINENOISE_MAX_LINE,stdin) == ((void*)0)) return ((void*)0);
        len = strlen(buf);
        while(len && (buf[len-1] == '\n' || buf[len-1] == '\r')) {
            len--;
            buf[len] = '\0';
        }
        return strdup(buf);
    } else {
        count = linenoiseRaw(buf,LINENOISE_MAX_LINE,prompt);
        if (count == -1) return ((void*)0);
        return strdup(buf);
    }
}
