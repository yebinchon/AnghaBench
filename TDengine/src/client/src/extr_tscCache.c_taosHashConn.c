
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int maxSessions; } ;
typedef TYPE_1__ SConnCache ;



int taosHashConn(void *handle, uint32_t ip, short port, char *user) {
  SConnCache *pObj = (SConnCache *)handle;
  int hash = 0;


  hash = ip >> 16;
  hash += (unsigned short)(ip & 0xFFFF);
  hash += (unsigned short)port;
  while (*user != '\0') {
    hash += *user;
    user++;
  }

  hash = hash % pObj->maxSessions;

  return hash;
}
