
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_3__ {scalar_t__ alloc; char* z; int n; } ;
typedef TYPE_1__ SString ;
typedef char* LPVOID ;
typedef int LPTSTR ;


 scalar_t__ ALIGN8 (scalar_t__) ;
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int FormatMessage (int,int *,int ,int ,int ,int ,int *) ;
 int GetLastError () ;
 int LANG_NEUTRAL ;
 int LocalFree (char*) ;
 int MAKELANGID (int ,int ) ;
 int SUBLANG_DEFAULT ;
 scalar_t__ TSDB_CODE_CLI_OUT_OF_MEMORY ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 char* calloc (int,scalar_t__) ;
 int errno ;
 int memset (char*,int ,scalar_t__) ;
 char* realloc (char*,scalar_t__) ;
 int strerror_r (int ,char*,int ) ;
 int tListLen (char*) ;
 int tscTrace (char*,char*) ;

int32_t SStringAlloc(SString* pStr, int32_t size) {
  if (pStr->alloc >= size) {
    return TSDB_CODE_SUCCESS;
  }

  size = ALIGN8(size);

  char* tmp = ((void*)0);
  if (pStr->z != ((void*)0)) {
    tmp = realloc(pStr->z, size);
    memset(pStr->z + pStr->n, 0, size - pStr->n);
  } else {
    tmp = calloc(1, size);
  }

  if (tmp == ((void*)0)) {
    char errmsg[256] = {0};
    strerror_r(errno, errmsg, tListLen(errmsg));
    tscTrace("failed to allocate memory, reason:%s", errmsg);

    return TSDB_CODE_CLI_OUT_OF_MEMORY;
  }

  pStr->z = tmp;
  pStr->alloc = size;

  return TSDB_CODE_SUCCESS;
}
