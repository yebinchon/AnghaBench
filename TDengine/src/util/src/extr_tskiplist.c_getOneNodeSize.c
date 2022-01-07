
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tSkipListNode ;
struct TYPE_3__ {scalar_t__ nType; int nLen; } ;
typedef TYPE_1__ tSkipListKey ;
typedef int int32_t ;


 scalar_t__ TSDB_DATA_TYPE_BINARY ;
 scalar_t__ TSDB_DATA_TYPE_NCHAR ;
 int TSDB_NCHAR_SIZE ;

__attribute__((used)) static size_t getOneNodeSize(const tSkipListKey *pKey, int32_t nLevel) {
  size_t size = sizeof(tSkipListNode) + sizeof(intptr_t) * (nLevel << 1);
  if (pKey->nType == TSDB_DATA_TYPE_BINARY) {
    size += pKey->nLen + 1;
  } else if (pKey->nType == TSDB_DATA_TYPE_NCHAR) {
    size += (pKey->nLen + 1) * TSDB_NCHAR_SIZE;
  }

  return size;
}
