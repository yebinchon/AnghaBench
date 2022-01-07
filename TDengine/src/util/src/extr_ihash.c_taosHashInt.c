
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int int32_t ;
struct TYPE_2__ {int maxSessions; } ;
typedef TYPE_1__ IHashObj ;



int32_t taosHashInt(void *handle, uint64_t key) {
  IHashObj *pObj = (IHashObj *)handle;
  int32_t hash = key % pObj->maxSessions;
  return hash;
}
