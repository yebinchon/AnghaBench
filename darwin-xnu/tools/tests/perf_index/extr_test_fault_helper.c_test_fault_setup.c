
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_ANON ;
 char* MAP_FAILED ;
 int MAP_PRIVATE ;
 int MEMSIZE ;
 int PERFINDEX_SUCCESS ;
 int PROT_READ ;
 int PROT_WRITE ;
 int VERIFY (int,char*) ;
 int getpagesize () ;
 char* memblock ;
 scalar_t__ mmap (int *,int,int,int,int,int ) ;
 int mprotect (char*,int,int) ;

int test_fault_setup() {
    char *ptr;
    int pgsz = getpagesize();
    int retval;

    memblock = (char *)mmap(((void*)0), MEMSIZE, PROT_READ | PROT_WRITE, MAP_ANON | MAP_PRIVATE, -1, 0);
    VERIFY(memblock != MAP_FAILED, "mmap failed");


    for(ptr = memblock; ptr<memblock+MEMSIZE; ptr+= pgsz) {
        *ptr = 1;
    }


    retval = mprotect(memblock, MEMSIZE, PROT_READ);
    VERIFY(retval == 0, "mprotect failed");

    retval = mprotect(memblock, MEMSIZE, PROT_READ | PROT_WRITE);
    VERIFY(retval == 0, "mprotect failed");

    return PERFINDEX_SUCCESS;
}
