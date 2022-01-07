
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int FALSE ;
 int O_RDONLY ;
 int STDIN_FILENO ;
 int TRUE ;
 int close (int) ;
 int fputs (char const*,int ) ;
 int open (char*,int ) ;
 size_t read (int,char*,size_t) ;
 int stderr ;
 int ttyecho (int ,int) ;

char *getpass_r(const char *prompt,
                char *password,
                size_t buflen)
{
  ssize_t nread;
  bool disabled;
  int fd = open("/dev/tty", O_RDONLY);
  if(-1 == fd)
    fd = STDIN_FILENO;

  disabled = ttyecho(FALSE, fd);

  fputs(prompt, stderr);
  nread = read(fd, password, buflen);
  if(nread > 0)
    password[--nread] = '\0';
  else
    password[0] = '\0';

  if(disabled) {

    fputs("\n", stderr);
    (void)ttyecho(TRUE, fd);
  }

  if(STDIN_FILENO != fd)
    close(fd);

  return password;
}
