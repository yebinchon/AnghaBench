
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int state; } ;
typedef TYPE_1__ SMeterObj ;


 int TSDB_METER_STATE_DELETING ;
 int TSDB_METER_STATE_READY ;

bool vnodeIsMeterState(SMeterObj* pMeterObj, int32_t state) {
  if (state == TSDB_METER_STATE_READY) {
    return pMeterObj->state == TSDB_METER_STATE_READY;
  } else if (state == TSDB_METER_STATE_DELETING) {
    return pMeterObj->state >= state;
  } else {
    return (((pMeterObj->state) & state) == state);
  }
}
