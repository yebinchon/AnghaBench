
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* payload; int allocSize; } ;
typedef TYPE_1__ SSqlCmd ;


 int TSDB_CODE_CLI_OUT_OF_MEMORY ;
 int TSDB_CODE_SUCCESS ;
 int assert (int) ;
 scalar_t__ malloc (int) ;
 int memset (char*,int ,int) ;
 char* realloc (char*,int) ;

int tscAllocPayload(SSqlCmd* pCmd, int size) {
  assert(size > 0);

  if (pCmd->payload == ((void*)0)) {
    assert(pCmd->allocSize == 0);

    pCmd->payload = (char*)malloc(size);
    if (pCmd->payload == ((void*)0)) return TSDB_CODE_CLI_OUT_OF_MEMORY;
    pCmd->allocSize = size;
  } else {
    if (pCmd->allocSize < size) {
      char* b = realloc(pCmd->payload, size);
      if (b == ((void*)0)) return TSDB_CODE_CLI_OUT_OF_MEMORY;
      pCmd->payload = b;
      pCmd->allocSize = size;
    }
  }

  memset(pCmd->payload, 0, pCmd->allocSize);
  assert(pCmd->allocSize >= size);

  return TSDB_CODE_SUCCESS;
}
