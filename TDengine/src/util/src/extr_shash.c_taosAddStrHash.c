
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dataSize; } ;
typedef TYPE_1__ SHashObj ;


 void* taosAddStrHashWithSize (void*,char*,char*,int ) ;

void *taosAddStrHash(void *handle, char *string, char *pData) {
  if (string == ((void*)0) || string[0] == 0) return ((void*)0);

  SHashObj *pObj = (SHashObj *)handle;
  return taosAddStrHashWithSize(handle, string, pData, pObj->dataSize);
}
