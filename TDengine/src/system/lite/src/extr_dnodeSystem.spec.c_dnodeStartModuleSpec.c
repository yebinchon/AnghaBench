
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num; scalar_t__ (* startFp ) () ;} ;


 int TSDB_MOD_MAX ;
 int dError (char*,int) ;
 scalar_t__ stub1 () ;
 TYPE_1__* tsModule ;

void dnodeStartModuleSpec() {
  for (int mod = 1; mod < TSDB_MOD_MAX; ++mod) {
    if (tsModule[mod].num != 0 && tsModule[mod].startFp) {
      if ((*tsModule[mod].startFp)() != 0) {
        dError("failed to start module:%d", mod);
      }
    }
  }
}
