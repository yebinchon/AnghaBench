
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num; int (* cleanUpFp ) () ;int (* stopFp ) () ;} ;


 int TSDB_MOD_MAX ;
 size_t TSDB_MOD_MGMT ;
 int stub1 () ;
 int stub2 () ;
 int stub3 () ;
 int taosCleanupTier () ;
 int taosCloseLogger () ;
 int taosTmrStopA (int **) ;
 int tsDnodeStopping ;
 TYPE_1__* tsModule ;
 int * tsStatusTimer ;
 int vnodeCleanUpVnodes () ;

void dnodeCleanUpSystem() {
  if (tsDnodeStopping) return;
  tsDnodeStopping = 1;

  if (tsStatusTimer != ((void*)0)) {
    taosTmrStopA(&tsStatusTimer);
    tsStatusTimer = ((void*)0);
  }

  for (int mod = 1; mod < TSDB_MOD_MAX; ++mod) {
    if (tsModule[mod].num != 0 && tsModule[mod].stopFp) {
      (*tsModule[mod].stopFp)();
    }
    if (tsModule[mod].num != 0 && tsModule[mod].cleanUpFp) {
      (*tsModule[mod].cleanUpFp)();
    }
  }

  if (tsModule[TSDB_MOD_MGMT].num != 0 && tsModule[TSDB_MOD_MGMT].cleanUpFp) {
    (*tsModule[TSDB_MOD_MGMT].cleanUpFp)();
  }

  vnodeCleanUpVnodes();

  taosCloseLogger();
  taosCleanupTier();
}
