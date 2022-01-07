
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char uint32_t ;
struct TYPE_2__ {char maxSessions; } ;
typedef TYPE_1__ SHashObj ;



uint32_t taosHashStringStep1(void *handle, char *string) {
  SHashObj *pObj = (SHashObj *)handle;
  uint32_t hash = 0, hashv;
  char * c;

  c = string;
  while (*c) {
    hash += *c;
    c++;
  }

  hashv = hash / pObj->maxSessions;
  hash = (hashv + hash % pObj->maxSessions) % pObj->maxSessions;

  return hash;
}
