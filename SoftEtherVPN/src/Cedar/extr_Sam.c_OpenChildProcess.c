
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PID ;


 int EXIT_FAILURE ;
 int _exit (int) ;
 int close (int) ;
 scalar_t__ dup2 (int,int ) ;
 int execvp (char const*,char* const*) ;
 int fileno (int ) ;
 int fork () ;
 scalar_t__ pipe (int*) ;
 int stdin ;
 int stdout ;

PID OpenChildProcess(const char* path, char* const parameter[], int fd[] )
{





 int fds[2][2];
 PID pid;

 if (path == ((void*)0) || parameter == ((void*)0) || fd == ((void*)0))
 {
  return (PID)-1;
 }

 if (pipe(fds[0]) != 0)
 {
  return (PID)-1;
 }

 if (pipe(fds[1]) != 0)
 {
  close(fds[0][0]);
  close(fds[0][1]);

  return (PID)-1;
 }

 pid = fork();
 if (pid == (PID)0) {
  int iError;

  close(fds[0][1]);
  close(fds[1][0]);

  if (dup2(fds[0][0], fileno(stdin)) < 0 || dup2(fds[1][1], fileno(stdout)) < 0 )
  {
   close(fds[0][0]);
   close(fds[1][1]);

   _exit(EXIT_FAILURE);
  }

  iError = execvp(path, parameter);


  close(fds[0][0]);
  close(fds[1][1]);

  _exit(iError);
 }
 else if (pid > (PID)0)
 {
  close(fds[0][0]);
  close(fds[1][1]);

  fd[0] = fds[1][0];
  fd[1] = fds[0][1];

  return pid;
 }
 else
 {
  close(fds[0][0]);
  close(fds[1][1]);

  close(fds[0][1]);
  close(fds[1][0]);

  return -1;
 }

}
