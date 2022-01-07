
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int exit (int) ;
 int fprintf (int ,char*) ;
 int printf (char*,char*) ;
 scalar_t__ read (int,char*,int) ;
 int stderr ;
 unsigned long long strtoull (char*,int *,int) ;
 int write (int,char*,int) ;

unsigned long long sendSync(int fd) {




    char buf[4096], *p;
    ssize_t nread;


    if (write(fd,"SYNC\r\n",6) != 6) {
        fprintf(stderr,"Error writing to master\n");
        exit(1);
    }


    p = buf;
    while(1) {
        nread = read(fd,p,1);
        if (nread <= 0) {
            fprintf(stderr,"Error reading bulk length while SYNCing\n");
            exit(1);
        }
        if (*p == '\n' && p != buf) break;
        if (*p != '\n') p++;
    }
    *p = '\0';
    if (buf[0] == '-') {
        printf("SYNC with master failed: %s\n", buf);
        exit(1);
    }
    return strtoull(buf+1,((void*)0),10);
}
