
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int quit ;


 int STDIN_FILENO ;
 int disableRawMode (int ) ;
 int enableRawMode (int ) ;
 int fflush (int ) ;
 scalar_t__ isprint (char) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memmove (char*,char*,int) ;
 int memset (char*,char,int) ;
 int printf (char*,...) ;
 int read (int ,char*,int) ;
 int stdout ;

void linenoisePrintKeyCodes(void) {
    char quit[4];

    printf("Linenoise key codes debugging mode.\n"
            "Press keys to see scan codes. Type 'quit' at any time to exit.\n");
    if (enableRawMode(STDIN_FILENO) == -1) return;
    memset(quit,' ',4);
    while(1) {
        char c;
        int nread;

        nread = read(STDIN_FILENO,&c,1);
        if (nread <= 0) continue;
        memmove(quit,quit+1,sizeof(quit)-1);
        quit[sizeof(quit)-1] = c;
        if (memcmp(quit,"quit",sizeof(quit)) == 0) break;

        printf("'%c' %02x (%d) (type quit to exit)\n",
            isprint(c) ? c : '?', (int)c, (int)c);
        printf("\r");
        fflush(stdout);
    }
    disableRawMode(STDIN_FILENO);
}
