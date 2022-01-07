
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aeEventLoop ;


 int FD_SETSIZE ;

__attribute__((used)) static int aeApiResize(aeEventLoop *eventLoop, int setsize) {

    if (setsize >= FD_SETSIZE) return -1;
    return 0;
}
