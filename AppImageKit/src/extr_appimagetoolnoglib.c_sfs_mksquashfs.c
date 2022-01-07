
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int execlp (char*,char*,char*,char*,char*,char*,char*) ;
 int fork () ;
 int getpid () ;
 int perror (char*) ;
 int waitpid (int,int*,int ) ;

int sfs_mksquashfs(char *source, char *destination) {
    pid_t parent = getpid();
    pid_t pid = fork();

    if (pid == -1) {

        return(-1);
    } else if (pid > 0) {
        int status;
        waitpid(pid, &status, 0);
    } else {

        execlp("mksquashfs", "mksquashfs", source, destination, "-root-owned", "-noappend", (char *)0);
        perror("execlp");
        return(-1);
    }
    return(0);
}
