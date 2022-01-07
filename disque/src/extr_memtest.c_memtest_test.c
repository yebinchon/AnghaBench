
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ULONG_ONEZERO ;
 unsigned long ULONG_ZEROONE ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,size_t,int ) ;
 int free (unsigned long*) ;
 unsigned long* malloc (size_t) ;
 int memtest_addressing (unsigned long*,size_t) ;
 int memtest_compare_times (unsigned long*,size_t,int,int) ;
 int memtest_fill_random (unsigned long*,size_t) ;
 int memtest_fill_value (unsigned long*,size_t,int ,unsigned long,char) ;
 int memtest_progress_end () ;
 int memtest_progress_start (char*,int) ;
 int stderr ;
 int strerror (int ) ;

void memtest_test(size_t megabytes, int passes) {
    size_t bytes = megabytes*1024*1024;
    unsigned long *m = malloc(bytes);
    int pass = 0;

    if (m == ((void*)0)) {
        fprintf(stderr,"Unable to allocate %zu megabytes: %s",
            megabytes, strerror(errno));
        exit(1);
    }
    while (pass != passes) {
        pass++;

        memtest_progress_start("Addressing test",pass);
        memtest_addressing(m,bytes);
        memtest_progress_end();

        memtest_progress_start("Random fill",pass);
        memtest_fill_random(m,bytes);
        memtest_progress_end();
        memtest_compare_times(m,bytes,pass,4);

        memtest_progress_start("Solid fill",pass);
        memtest_fill_value(m,bytes,0,(unsigned long)-1,'S');
        memtest_progress_end();
        memtest_compare_times(m,bytes,pass,4);

        memtest_progress_start("Checkerboard fill",pass);
        memtest_fill_value(m,bytes,ULONG_ONEZERO,ULONG_ZEROONE,'C');
        memtest_progress_end();
        memtest_compare_times(m,bytes,pass,4);
    }
    free(m);
}
