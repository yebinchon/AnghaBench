
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int sdbEcommit ;
typedef scalar_t__ off_t ;
struct TYPE_2__ {scalar_t__ size; int fd; } ;
typedef TYPE_1__ SSdbTable ;


 int SDB_ENDCOMMIT ;
 int SEEK_END ;
 int assert (int) ;
 scalar_t__ lseek (int ,int ,int ) ;
 int twrite (int ,int *,int) ;

void sdbFinishCommit(void *handle) {
  SSdbTable *pTable = (SSdbTable *)handle;
  uint32_t sdbEcommit = SDB_ENDCOMMIT;

  off_t offset = lseek(pTable->fd, 0, SEEK_END);
  assert(offset == pTable->size);
  twrite(pTable->fd, &sdbEcommit, sizeof(sdbEcommit));
  pTable->size += sizeof(sdbEcommit);
}
