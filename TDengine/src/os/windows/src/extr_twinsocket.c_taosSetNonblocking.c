
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int SOCKET ;


 int FIONBIO ;
 int ioctlsocket (int ,int ,int*) ;

int taosSetNonblocking(SOCKET sock, int on) {
    u_long mode;
    if (on) {
        mode = 1;
        ioctlsocket(sock, FIONBIO, &mode);
    }
    else {
        mode = 0;
        ioctlsocket(sock, FIONBIO, &mode);
    }
    return 0;
}
