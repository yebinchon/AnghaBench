
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int maxSessions; } ;
typedef TYPE_1__ SHashObj ;



int taosHashIp(void *handle, uint32_t ip, short port) {
  SHashObj *pObj = (SHashObj *)handle;
  int hash = 0;

  hash = (int)(ip >> 16);
  hash += (unsigned short)(ip & 0xFFFF);
  hash += (unsigned short)port;

  hash = hash % pObj->maxSessions;

  return hash;
}
