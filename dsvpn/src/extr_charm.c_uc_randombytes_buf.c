
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_getrandom ;
 int abort () ;
 int arc4random_buf (void*,size_t) ;
 scalar_t__ syscall (int ,void*,int,int ) ;

void uc_randombytes_buf(void *buf, size_t len)
{

    if ((size_t) syscall(SYS_getrandom, buf, (int) len, 0) != len) {
        abort();
    }



}
