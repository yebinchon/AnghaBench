
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_6__ {TYPE_1__* pState; int queryMutex; int numOfRetry; } ;
struct TYPE_5__ {int code; } ;
typedef int TAOS_RES ;
typedef TYPE_2__ SRetrieveSupport ;
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
 int MAX_NUM_OF_SUBQUERY_RETRY ;
 int SUBLANG_DEFAULT ;
 int errno ;
 int pthread_mutex_unlock (int *) ;
 int strerror_r (int ,char*,int) ;
 int tscError (char*,int *,char*) ;
 int tscRetrieveFromVnodeCallBack (TYPE_2__*,int *,int ) ;

__attribute__((used)) static void tscAbortFurtherRetryRetrieval(SRetrieveSupport *trsupport, TAOS_RES *tres, int32_t errCode) {
  char buf[256] = {0};
  strerror_r(errno, buf, 256);
  tscError("sub:%p failed to flush data to disk:reason:%s", tres, buf);


  trsupport->pState->code = -errCode;
  trsupport->numOfRetry = MAX_NUM_OF_SUBQUERY_RETRY;

  pthread_mutex_unlock(&trsupport->queryMutex);

  tscRetrieveFromVnodeCallBack(trsupport, tres, trsupport->pState->code);
}
