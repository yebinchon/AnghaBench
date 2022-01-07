
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {scalar_t__ sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int serverAddr ;


 int AF_UNIX ;
 int SOCK_STREAM ;
 int connect (int,struct sockaddr*,int) ;
 int errno ;
 int memset (char*,int ,int) ;
 int pError (char*,char*,int ) ;
 int socket (int ,int ,int ) ;
 int sprintf (char*,char*,char*,short) ;
 int strcpy (scalar_t__,char*) ;
 int strerror (int ) ;

int taosOpenUDClientSocket(char *ip, short port) {
  int sockFd = 0;
  struct sockaddr_un serverAddr;
  int ret;
  char name[128];
  sprintf(name, "%s.%d", ip, port);

  sockFd = socket(AF_UNIX, SOCK_STREAM, 0);

  if (sockFd < 0) {
    pError("failed to open the UD socket:%s, reason:%s", name, strerror(errno));
    return -1;
  }

  memset((char *)&serverAddr, 0, sizeof(serverAddr));
  serverAddr.sun_family = AF_UNIX;
  strcpy(serverAddr.sun_path + 1, name);

  ret = connect(sockFd, (struct sockaddr *)&serverAddr, sizeof(serverAddr));

  if (ret != 0) {
    pError("failed to connect UD socket, name:%d, reason: %s", name, strerror(errno));
    sockFd = -1;
  }

  return sockFd;
}
