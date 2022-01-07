
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int state; } ;
typedef TYPE_1__ SMeterObj ;


 int TSDB_METER_STATE_READY ;
 int atomic_val_compare_exchange_32 (int *,int ,int ) ;

int32_t vnodeSetMeterState(SMeterObj* pMeterObj, int32_t state) {
  return atomic_val_compare_exchange_32(&pMeterObj->state, TSDB_METER_STATE_READY, state);
}
