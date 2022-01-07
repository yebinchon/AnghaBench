
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WCONTINUED ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int WUNTRACED ;
 int execlp (char*,char*,char*,int *) ;
 int fork () ;
 int printf (char*) ;
 int waitpid (int,int*,int) ;

int validate_desktop_file(char *file) {
    int statval;
    int child_pid;
    child_pid = fork();
    if(child_pid == -1)
    {
        printf("could not fork! \n");
        return 1;
    }
    else if(child_pid == 0)
    {
        execlp("desktop-file-validate", "desktop-file-validate", file, ((void*)0));
    }
    else
    {
        waitpid(child_pid, &statval, WUNTRACED | WCONTINUED);
        if(WIFEXITED(statval)){
            return(WEXITSTATUS(statval));
        }
    }
    return -1;
}
