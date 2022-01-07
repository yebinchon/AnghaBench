
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_11__ {int command; } ;
struct TYPE_10__ {TYPE_8__ cmd; } ;
struct TYPE_9__ {scalar_t__ etime; scalar_t__ stime; scalar_t__ interval; int pTimer; int pSql; int param; int (* callback ) (int ) ;int precision; } ;
typedef TYPE_1__ SSqlStream ;
typedef TYPE_2__ SSqlObj ;


 int TSDB_SQL_SELECT ;
 scalar_t__ isProjectStream (TYPE_8__*) ;
 int stub1 (int ) ;
 scalar_t__ taosGetTimestamp (int ) ;
 int taosTmrReset (int ,scalar_t__,TYPE_1__*,int ,int *) ;
 int taos_close_stream (TYPE_1__*) ;
 scalar_t__ tsMaxRetentWindow ;
 int tscProcessStreamTimer ;
 int tscTmr ;
 int tscTrace (char*,int ,TYPE_1__*,scalar_t__,scalar_t__,...) ;

__attribute__((used)) static void tscSetRetryTimer(SSqlStream *pStream, SSqlObj *pSql, int64_t timer) {
  if (isProjectStream(&pSql->cmd)) {
    int64_t now = taosGetTimestamp(pStream->precision);
    int64_t etime = now > pStream->etime ? pStream->etime : now;

    if (pStream->etime < now && now - pStream->etime > tsMaxRetentWindow) {



      tscTrace("%p stream:%p, etime:%lld is too old, exceeds the max retention time window:%lld, stop the stream",
               pStream->pSql, pStream, pStream->stime, pStream->etime);

      taos_close_stream(pStream);
      if (pStream->callback) {

        pStream->callback(pStream->param);
      }
      return;
    }

    tscTrace("%p stream:%p, next query start at %lld, in %lldms. query range %lld-%lld", pStream->pSql, pStream,
             now + timer, timer, pStream->stime, etime);
  } else {
    tscTrace("%p stream:%p, next query start at %lld, in %lldms. query range %lld-%lld", pStream->pSql, pStream,
             pStream->stime, timer, pStream->stime - pStream->interval, pStream->stime - 1);
  }

  pSql->cmd.command = TSDB_SQL_SELECT;


  taosTmrReset(tscProcessStreamTimer, timer, pStream, tscTmr, &pStream->pTimer);
}
