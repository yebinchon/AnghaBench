
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int fd; } ;
typedef TYPE_1__ SFdObj ;


 scalar_t__ send (int ,char*,size_t,int ) ;

int taosSendTcpServerData(uint32_t ip, short port, char *data, int len, void *chandle) {
  SFdObj *pFdObj = (SFdObj *)chandle;

  if (chandle == ((void*)0)) return -1;

  return (int)send(pFdObj->fd, data, (size_t)len, 0);
}
