
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_2__ {int (* startFp ) () ;int name; int (* stopFp ) () ;} ;


 int TSDB_MOD_MAX ;
 int dPrint (char*,int ) ;
 int stub1 () ;
 int stub2 () ;
 scalar_t__ tsDnodeStopping ;
 TYPE_1__* tsModule ;
 int tsModuleStatus ;

void dnodeProcessModuleStatus(uint32_t status) {
  if (tsDnodeStopping) return;

  int news = status;
  int olds = tsModuleStatus;

  for (int moduleType = 0; moduleType < TSDB_MOD_MAX; ++moduleType) {
    int newStatus = news & (1 << moduleType);
    int oldStatus = olds & (1 << moduleType);

    if (oldStatus > 0) {
      if (newStatus == 0) {
        if (tsModule[moduleType].stopFp) {
          dPrint("module:%s is stopped on this node", tsModule[moduleType].name);
          (*tsModule[moduleType].stopFp)();
        }
      }
    } else if (oldStatus == 0) {
      if (newStatus > 0) {
        if (tsModule[moduleType].startFp) {
          dPrint("module:%s is started on this node", tsModule[moduleType].name);
          (*tsModule[moduleType].startFp)();
        }
      }
    } else {
    }
  }
  tsModuleStatus = status;
}
