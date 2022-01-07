
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int maxSessions; } ;
typedef TYPE_1__ SHashObj ;



int sdbHashLong(void *handle, uint32_t ip) {
  SHashObj *pObj = (SHashObj *)handle;
  int hash = 0;

  hash = ip >> 16;
  hash += (ip & 0xFFFF);

  hash = hash % pObj->maxSessions;

  return hash;
}
