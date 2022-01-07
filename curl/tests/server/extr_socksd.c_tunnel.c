
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perclient {int fromremote; int clientfd; int remotefd; int fromclient; } ;
typedef scalar_t__ ssize_t ;
typedef int fd_set ;
typedef int buffer ;
typedef int SEND_TYPE_ARG3 ;


 scalar_t__ FD_ISSET (int ,int *) ;
 scalar_t__ recv (int ,char*,int,int ) ;
 scalar_t__ send (int ,char*,int ,int ) ;

__attribute__((used)) static int tunnel(struct perclient *cp, fd_set *fds)
{
  ssize_t nread;
  ssize_t nwrite;
  char buffer[512];
  if(FD_ISSET(cp->clientfd, fds)) {

    nread = recv(cp->clientfd, buffer, sizeof(buffer), 0);
    if(nread > 0) {
      nwrite = send(cp->remotefd, (char *)buffer,
                    (SEND_TYPE_ARG3)nread, 0);
      if(nwrite != nread)
        return 1;
      cp->fromclient += nwrite;
    }
    else
      return 1;
  }
  if(FD_ISSET(cp->remotefd, fds)) {

    nread = recv(cp->remotefd, buffer, sizeof(buffer), 0);
    if(nread > 0) {
      nwrite = send(cp->clientfd, (char *)buffer,
                    (SEND_TYPE_ARG3)nread, 0);
      if(nwrite != nread)
        return 1;
      cp->fromremote += nwrite;
    }
    else
      return 1;
  }
  return 0;
}
