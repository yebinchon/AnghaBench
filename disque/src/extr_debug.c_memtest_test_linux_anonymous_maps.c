
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int line ;
typedef int FILE ;


 int MEMTEST_MAX_REGIONS ;
 scalar_t__ crc64 (scalar_t__,void*,size_t) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int memtest_non_destructive_invert (void*,size_t) ;
 int memtest_non_destructive_swap (void*,size_t) ;
 int printf (char*,unsigned long,unsigned long) ;
 char* strchr (char*,char) ;
 scalar_t__ strstr (char*,char*) ;
 size_t strtoul (char*,int *,int) ;

int memtest_test_linux_anonymous_maps(void) {
    FILE *fp = fopen("/proc/self/maps","r");
    char line[1024];
    size_t start_addr, end_addr, size;
    size_t start_vect[MEMTEST_MAX_REGIONS];
    size_t size_vect[MEMTEST_MAX_REGIONS];
    int regions = 0, j;
    uint64_t crc1 = 0, crc2 = 0, crc3 = 0;

    while(fgets(line,sizeof(line),fp) != ((void*)0)) {
        char *start, *end, *p = line;

        start = p;
        p = strchr(p,'-');
        if (!p) continue;
        *p++ = '\0';
        end = p;
        p = strchr(p,' ');
        if (!p) continue;
        *p++ = '\0';
        if (strstr(p,"stack") ||
            strstr(p,"vdso") ||
            strstr(p,"vsyscall")) continue;
        if (!strstr(p,"00:00")) continue;
        if (!strstr(p,"rw")) continue;

        start_addr = strtoul(start,((void*)0),16);
        end_addr = strtoul(end,((void*)0),16);
        size = end_addr-start_addr;

        start_vect[regions] = start_addr;
        size_vect[regions] = size;
        printf("Testing %lx %lu\n", (unsigned long) start_vect[regions],
                                    (unsigned long) size_vect[regions]);
        regions++;
    }



    for (j = 0; j < regions; j++) {
        crc1 = crc64(crc1,(void*)start_vect[j],size_vect[j]);
    }



    for (j = 0; j < regions; j++)
        memtest_non_destructive_invert((void*)start_vect[j],size_vect[j]);
    for (j = 0; j < regions; j++)
        memtest_non_destructive_swap((void*)start_vect[j],size_vect[j]);
    for (j = 0; j < regions; j++)
        memtest_non_destructive_swap((void*)start_vect[j],size_vect[j]);
    for (j = 0; j < regions; j++)
        memtest_non_destructive_invert((void*)start_vect[j],size_vect[j]);


    for (j = 0; j < regions; j++)
        crc2 = crc64(crc2,(void*)start_vect[j],size_vect[j]);


    for (j = 0; j < regions; j++)
        memtest_non_destructive_swap((void*)start_vect[j],size_vect[j]);
    for (j = 0; j < regions; j++)
        memtest_non_destructive_swap((void*)start_vect[j],size_vect[j]);


    for (j = 0; j < regions; j++)
        crc3 = crc64(crc3,(void*)start_vect[j],size_vect[j]);




    fclose(fp);


    return crc1 != crc2 || crc2 != crc3;
}
