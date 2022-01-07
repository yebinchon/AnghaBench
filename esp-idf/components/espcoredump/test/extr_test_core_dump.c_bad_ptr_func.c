
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCI_NULL_PTR ;
 int crash_flags ;
 int printf (char*,unsigned long) ;

void bad_ptr_func(void)
{
    unsigned long *ptr = (unsigned long *)0;
    volatile int cnt = 0;
    int i = 0;

    for (i = 0; i < 1000; i++) {
        cnt++;
    }

    if(crash_flags & TCI_NULL_PTR) {
        printf("Write to bad address 0x%lx.\n", (unsigned long)ptr);
        *ptr = 0xDEADBEEF;
    }
}
