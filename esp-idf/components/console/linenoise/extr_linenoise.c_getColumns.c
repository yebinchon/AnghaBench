
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fwrite (char*,int,int,int ) ;
 int getCursorPosition () ;
 int snprintf (char*,int,char*,int) ;
 int stdout ;
 int strlen (char*) ;

__attribute__((used)) static int getColumns(void) {
    int start, cols;


    start = getCursorPosition();
    if (start == -1) goto failed;


    if (fwrite("\x1b[999C", 1, 6, stdout) != 6) goto failed;
    cols = getCursorPosition();
    if (cols == -1) goto failed;


    if (cols > start) {
        char seq[32];
        snprintf(seq,32,"\x1b[%dD",cols-start);
        if (fwrite(seq, 1, strlen(seq), stdout) == -1) {

        }
    }
    return cols;

failed:
    return 80;
}
