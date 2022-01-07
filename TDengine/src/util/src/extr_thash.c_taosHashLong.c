
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int maxSessions; } ;
typedef TYPE_1__ SHashObj ;



int taosHashLong(void *handle, uint64_t ip) {
  SHashObj *pObj = (SHashObj *)handle;
  int hash = 0;

  hash = (int)(ip >> 16);
  hash += (int)(ip & 0xFFFF);

  hash = hash % pObj->maxSessions;

  return hash;
}
