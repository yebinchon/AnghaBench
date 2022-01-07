
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef long int64_t ;
struct TYPE_10__ {int cmd; } ;
struct TYPE_9__ {long slidingTime; scalar_t__ stime; scalar_t__ etime; scalar_t__ interval; scalar_t__ precision; int param; int (* callback ) (int ) ;int pSql; } ;
typedef TYPE_1__ SSqlStream ;
typedef TYPE_2__ SSqlObj ;


 scalar_t__ TSDB_TIME_PRECISION_MICRO ;
 scalar_t__ isProjectStream (int *) ;
 long rand () ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 long taosGetTimestamp (scalar_t__) ;
 int taos_close_stream (TYPE_1__*) ;
 long tsMaxStreamComputDelay ;
 int tscSetRetryTimer (TYPE_1__*,TYPE_2__*,long) ;
 int tscTrace (char*,int ,TYPE_1__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void tscSetNextLaunchTimer(SSqlStream *pStream, SSqlObj *pSql) {
  int64_t timer = 0;

  if (isProjectStream(&pSql->cmd)) {




    timer = pStream->slidingTime;
    if (pStream->stime > pStream->etime) {
      tscTrace("%p stream:%p, stime:%lld is larger than end time: %lld, stop the stream", pStream->pSql, pStream,
               pStream->stime, pStream->etime);

      taos_close_stream(pStream);
      if (pStream->callback) {

        pStream->callback(pStream->param);
      }
      return;
    }
  } else {
    pStream->stime += pStream->slidingTime;
    if ((pStream->stime - pStream->interval) >= pStream->etime) {
      tscTrace("%p stream:%p, stime:%ld is larger than end time: %ld, stop the stream", pStream->pSql, pStream,
               pStream->stime, pStream->etime);

      taos_close_stream(pStream);
      if (pStream->callback) {

        pStream->callback(pStream->param);
      }
      return;
    }

    timer = pStream->stime - taosGetTimestamp(pStream->precision);
    if (timer < 0) {
      timer = 0;
    }
  }

  int64_t delayDelta = (int64_t)(pStream->slidingTime * 0.1);
  delayDelta = (rand() % delayDelta);

  int64_t maxDelay =
      (pStream->precision == TSDB_TIME_PRECISION_MICRO) ? tsMaxStreamComputDelay * 1000L : tsMaxStreamComputDelay;

  if (delayDelta > maxDelay) {
    delayDelta = maxDelay;
  }

  timer += delayDelta;
  if (pStream->precision == TSDB_TIME_PRECISION_MICRO) {
    timer = timer / 1000L;
  }

  tscSetRetryTimer(pStream, pSql, timer);
}
