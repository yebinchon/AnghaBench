
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int errno ;
 int fputc (char,int ) ;
 int linenoiseEdit (char*,size_t,char const*) ;
 int stdout ;

__attribute__((used)) static int linenoiseRaw(char *buf, size_t buflen, const char *prompt) {
    int count;

    if (buflen == 0) {
        errno = EINVAL;
        return -1;
    }

    count = linenoiseEdit(buf, buflen, prompt);
    fputc('\n', stdout);
    return count;
}
