
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int state; } ;
typedef TYPE_1__ SMeterObj ;



void vnodeClearMeterState(SMeterObj* pMeterObj, int32_t state) {
  pMeterObj->state &= (~state);
}
