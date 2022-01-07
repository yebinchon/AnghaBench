
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int lseek (int,int ,int ) ;
 int write (int,char*,int) ;

int
rawfalloc(int fd, int len)
{



    static char buf[4096] = {0};
    int i, w;

    for (i = 0; i < len; i += w) {
        w = write(fd, buf, sizeof buf);
        if (w == -1)
            return errno;
    }
    lseek(fd, 0, 0);
    return 0;
}
