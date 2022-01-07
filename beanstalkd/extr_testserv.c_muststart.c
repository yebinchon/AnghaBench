
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int execlp (char*,char*,char*,char*,char*,char*,int *) ;
 int exit (int) ;
 int fork () ;
 int printf (char*,...) ;
 int srvpid ;
 int twarn (char*) ;
 int usleep (int) ;

__attribute__((used)) static void
muststart(char *a0, char *a1, char *a2, char *a3, char *a4)
{
    srvpid = fork();
    if (srvpid < 0) {
        twarn("fork");
        exit(1);
    }

    if (srvpid > 0) {
        printf("%s %s %s %s %s\n", a0, a1, a2, a3, a4);
        printf("start server pid=%d\n", srvpid);
        usleep(100000);
        return;
    }



    execlp(a0, a0, a1, a2, a3, a4, ((void*)0));
}
