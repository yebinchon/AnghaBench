
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int rawAdd ;
typedef int hold ;


 int AF_INET ;
 int IPPROTO_IP ;
 int IPPROTO_UDP ;
 int IP_HDRINCL ;
 int SOCK_RAW ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int bzero (char*,int) ;
 int close (int) ;
 int errno ;
 int inet_addr (char*) ;
 int pError (char*,int ,int ) ;
 int pTrace (char*,char*) ;
 scalar_t__ socket (int ,int ,int ) ;
 int strerror (int ) ;
 scalar_t__ taosSetSockOpt (int,int ,int ,void*,int) ;

int taosOpenRawSocket(char *ip) {
  int fd, hold;
  struct sockaddr_in rawAdd;

  pTrace("open udp raw socket:%s", ip);


  fd = (int)socket(AF_INET, SOCK_RAW, IPPROTO_UDP);
  if (fd < 0) {
    pError("failed to open raw socket: %d (%s)", errno, strerror(errno));
    return -1;
  }

  hold = 1;
  if (taosSetSockOpt(fd, IPPROTO_IP, IP_HDRINCL, (void *)&hold, sizeof(hold)) < 0) {
    pError("failed to set hold option: %d (%s)", errno, strerror(errno));
    close(fd);
    return -1;
  }

  bzero((char *)&rawAdd, sizeof(rawAdd));
  rawAdd.sin_family = AF_INET;
  rawAdd.sin_addr.s_addr = inet_addr(ip);

  if (bind(fd, (struct sockaddr *)&rawAdd, sizeof(rawAdd)) < 0) {
    pError("failed to bind RAW socket: %d (%s)", errno, strerror(errno));
    close(fd);
    return -1;
  }

  return fd;
}
