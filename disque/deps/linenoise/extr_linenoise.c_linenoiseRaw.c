
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int disableRawMode (int ) ;
 int enableRawMode (int ) ;
 int errno ;
 int * fgets (char*,size_t,int ) ;
 int isatty (int ) ;
 int linenoiseEdit (int ,int ,char*,size_t,char const*) ;
 int printf (char*) ;
 int stdin ;
 int strlen (char*) ;

__attribute__((used)) static int linenoiseRaw(char *buf, size_t buflen, const char *prompt) {
    int count;

    if (buflen == 0) {
        errno = EINVAL;
        return -1;
    }
    if (!isatty(STDIN_FILENO)) {

        if (fgets(buf, buflen, stdin) == ((void*)0)) return -1;
        count = strlen(buf);
        if (count && buf[count-1] == '\n') {
            count--;
            buf[count] = '\0';
        }
    } else {

        if (enableRawMode(STDIN_FILENO) == -1) return -1;
        count = linenoiseEdit(STDIN_FILENO, STDOUT_FILENO, buf, buflen, prompt);
        disableRawMode(STDIN_FILENO);
        printf("\n");
    }
    return count;
}
