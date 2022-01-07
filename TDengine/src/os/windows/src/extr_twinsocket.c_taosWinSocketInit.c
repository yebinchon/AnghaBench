
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WSADATA ;
typedef int WORD ;


 int MAKEWORD (int,int) ;
 scalar_t__ WSAStartup (int ,int *) ;

void taosWinSocketInit() {
    static char flag = 0;
    if (flag == 0) {
        WORD wVersionRequested;
        WSADATA wsaData;
        wVersionRequested = MAKEWORD(1, 1);
        if (WSAStartup(wVersionRequested, &wsaData) == 0) {
            flag = 1;
        }
    }
}
