
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_9__ {scalar_t__ data; } ;
struct TYPE_10__ {TYPE_2__ res; } ;
struct TYPE_8__ {scalar_t__ stime; scalar_t__ interval; } ;
typedef TYPE_1__ SSqlStream ;
typedef TYPE_2__ SSqlRes ;
typedef TYPE_3__ SSqlObj ;


 int tscWarn (char*,TYPE_3__*,TYPE_1__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void tscSetTimestampForRes(SSqlStream *pStream, SSqlObj *pSql) {
  SSqlRes *pRes = &pSql->res;

  int64_t timestamp = *(int64_t *)pRes->data;
  int64_t actualTimestamp = pStream->stime - pStream->interval;

  if (timestamp != actualTimestamp) {

    *((int64_t *)pRes->data) = actualTimestamp;
    tscWarn("%p stream:%p, timestamp of points is:%lld, reset to %lld", pSql, pStream, timestamp, actualTimestamp);
  }
}
