
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kq ;
 int kqueue () ;
 int twarn (char*) ;

int
sockinit(void)
{
    kq = kqueue();
    if (kq == -1) {
        twarn("kqueue");
        return -1;
    }
    return 0;
}
