
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int _SC_PAGESIZE ;
 int close (int) ;
 int getpid () ;
 int open (char*,int ) ;
 scalar_t__ read (int,char*,int) ;
 int snprintf (char*,int,char*,int) ;
 char* strchr (char*,char) ;
 size_t strtoll (char*,int *,int) ;
 int sysconf (int ) ;

size_t zmalloc_get_rss(void) {
    int page = sysconf(_SC_PAGESIZE);
    size_t rss;
    char buf[4096];
    char filename[256];
    int fd, count;
    char *p, *x;

    snprintf(filename,256,"/proc/%d/stat",getpid());
    if ((fd = open(filename,O_RDONLY)) == -1) return 0;
    if (read(fd,buf,4096) <= 0) {
        close(fd);
        return 0;
    }
    close(fd);

    p = buf;
    count = 23;
    while(p && count--) {
        p = strchr(p,' ');
        if (p) p++;
    }
    if (!p) return 0;
    x = strchr(p,' ');
    if (!x) return 0;
    *x = '\0';

    rss = strtoll(p,((void*)0),10);
    rss *= page;
    return rss;
}
