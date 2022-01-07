
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BACKSPACE ;
 int fgetc (int ) ;
 int fputc (char,int ) ;
 int fputs (char const*,int ) ;
 int stdin ;
 int stdout ;

__attribute__((used)) static int linenoiseDumb(char* buf, size_t buflen, const char* prompt) {

    fputs(prompt, stdout);
    int count = 0;
    while (count < buflen) {
        int c = fgetc(stdin);
        if (c == '\n') {
            break;
        } else if (c >= 0x1c && c <= 0x1f){
            continue;
        } else if (c == BACKSPACE || c == 0x8) {
            if (count > 0) {
                buf[count - 1] = 0;
                count --;
            }
            fputs("\x08 ", stdout);
        } else {
            buf[count] = c;
            ++count;
        }
        fputc(c, stdout);
    }
    fputc('\n', stdout);
    return count;
}
