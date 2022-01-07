
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {scalar_t__ sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int serverAdd ;


 int AF_UNIX ;
 int SOCK_STREAM ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int bzero (char*,int) ;
 int errno ;
 scalar_t__ listen (int,int) ;
 int pError (char*,char*,int ) ;
 int pTrace (char*,char*) ;
 int socket (int ,int ,int ) ;
 int sprintf (char*,char*,char*,short) ;
 int strcpy (scalar_t__,char*) ;
 int strerror (int ) ;
 int tclose (int) ;
 int unlink (char*) ;

int taosOpenUDServerSocket(char *ip, short port) {
  struct sockaddr_un serverAdd;
  int sockFd;
  char name[128];

  pTrace("open ud socket:%s", name);

  sprintf(name, "%s.%d", ip, port);

  bzero((char *)&serverAdd, sizeof(serverAdd));
  serverAdd.sun_family = AF_UNIX;
  strcpy(serverAdd.sun_path + 1, name);
  unlink(name);

  if ((sockFd = socket(AF_UNIX, SOCK_STREAM, 0)) < 0) {
    pError("failed to open UD socket:%s, reason:%s", name, strerror(errno));
    return -1;
  }


  if (bind(sockFd, (struct sockaddr *)&serverAdd, sizeof(serverAdd)) < 0) {
    pError("bind socket:%s failed, reason:%s", name, strerror(errno));
    tclose(sockFd);
    return -1;
  }

  if (listen(sockFd, 10) < 0) {
    pError("listen socket:%s failed, reason:%s", name, strerror(errno));
    return -1;
  }

  return sockFd;
}
