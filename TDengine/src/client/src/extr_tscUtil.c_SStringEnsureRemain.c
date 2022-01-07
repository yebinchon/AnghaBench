
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_3__ {int alloc; scalar_t__ n; char* z; } ;
typedef TYPE_1__ SString ;
typedef char* LPVOID ;
typedef int LPTSTR ;


 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int FormatMessage (int,int *,int ,int ,int ,int ,int *) ;
 int GetLastError () ;
 int LANG_NEUTRAL ;
 int LocalFree (char*) ;
 int MAKELANGID (int ,int ) ;
 scalar_t__ MIN_ALLOC_SIZE ;
 int SUBLANG_DEFAULT ;
 scalar_t__ TSDB_CODE_CLI_OUT_OF_MEMORY ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 int errno ;
 int memset (char*,int ,scalar_t__) ;
 char* realloc (char*,scalar_t__) ;
 int strerror_r (int ,char*,int ) ;
 int tListLen (char*) ;
 int tscTrace (char*,char*) ;

int32_t SStringEnsureRemain(SString* pStr, int32_t size) {
  if (pStr->alloc - pStr->n > size) {
    return TSDB_CODE_SUCCESS;
  }


  int32_t inc = (size < MIN_ALLOC_SIZE) ? size : MIN_ALLOC_SIZE;
  if (inc < (pStr->alloc >> 1)) {
    inc = (pStr->alloc >> 1);
  }


  int32_t newsize = pStr->alloc + inc;

  char* tmp = realloc(pStr->z, newsize);
  if (tmp == ((void*)0)) {
    char errmsg[256] = {0};
    strerror_r(errno, errmsg, tListLen(errmsg));
    tscTrace("failed to allocate memory, reason:%s", errmsg);


    return TSDB_CODE_CLI_OUT_OF_MEMORY;
  }

  memset(tmp + pStr->n, 0, inc);
  pStr->z = tmp;

  return TSDB_CODE_SUCCESS;
}
