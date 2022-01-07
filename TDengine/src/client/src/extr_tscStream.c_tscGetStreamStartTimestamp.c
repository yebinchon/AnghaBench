
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_11__ {scalar_t__ stime; } ;
struct TYPE_10__ {TYPE_3__ cmd; } ;
struct TYPE_9__ {scalar_t__ interval; int precision; void* slidingTime; } ;
typedef TYPE_1__ SSqlStream ;
typedef TYPE_2__ SSqlObj ;
typedef TYPE_3__ SSqlCmd ;


 int assert (int) ;
 scalar_t__ isProjectStream (TYPE_3__*) ;
 scalar_t__ taosGetTimestamp (int ) ;
 void* tsProjectExecInterval ;
 int tscWarn (char*,TYPE_2__*,TYPE_1__*,scalar_t__,...) ;

__attribute__((used)) static int64_t tscGetStreamStartTimestamp(SSqlObj *pSql, SSqlStream *pStream, int64_t stime) {
  SSqlCmd *pCmd = &pSql->cmd;

  if (isProjectStream(pCmd)) {

    pStream->interval = tsProjectExecInterval;
    pStream->slidingTime = tsProjectExecInterval;

    if (stime != 0) {
      assert(stime >= pCmd->stime);
      stime += 1;
    } else {
      stime = pCmd->stime;
    }
  } else {
    if (stime == 0) {
      stime = ((int64_t)taosGetTimestamp(pStream->precision) / pStream->interval) * pStream->interval;
      tscWarn("%p stream:%p, last timestamp:0, reset to:%lld", pSql, pStream, stime);
    } else {
      int64_t newStime = (stime / pStream->interval) * pStream->interval;
      if (newStime != stime) {
        tscWarn("%p stream:%p, last timestamp:%lld, reset to:%lld", pSql, pStream, stime, newStime);
        stime = newStime;
      }
    }
  }

  return stime;
}
