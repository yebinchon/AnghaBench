
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int maxSessions; } ;
typedef TYPE_1__ SHashObj ;


 int strlen (char*) ;

int sdbHashString(void *handle, char *string) {
  SHashObj * pObj = (SHashObj *)handle;
  unsigned int hash = 0, hashv;
  char * c;
  int len = strlen(string);

  c = string;

  while (len >= 4) {
    hash += *((int *)c);
    c += 4;
    len -= 4;
  }

  while (len > 0) {
    hash += *c;
    c++;
    len--;
  }

  hashv = hash / pObj->maxSessions;
  hash = (hashv + hash % pObj->maxSessions) % pObj->maxSessions;

  return hash;
}
