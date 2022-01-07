
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int fcntl (int,int ,...) ;
 char* getenv (char*) ;
 scalar_t__ read (int,char*,int) ;
 int rjobfd ;
 char* strstr (char*,char*) ;
 scalar_t__ strtol (char*,char**,int) ;
 int wjobfd ;

__attribute__((used)) static int
readtokens()
{
    int n = 1;
    char c, *s;
    char *v = getenv("MAKEFLAGS");
    if (v == ((void*)0))
        return n;
    if ((s = strstr(v, " --jobserver-fds="))) {
        rjobfd = (int)strtol(s+17, &s, 10);
        wjobfd = (int)strtol(s+1, ((void*)0), 10);
    }
    if (rjobfd >= 0) {
        fcntl(rjobfd, F_SETFL, fcntl(rjobfd, F_GETFL)|O_NONBLOCK);
        while (read(rjobfd, &c, 1) > 0) {
            n++;
        }
    }
    return n;
}
