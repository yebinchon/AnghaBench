
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ meterType; } ;
typedef TYPE_1__ STabObj ;


 scalar_t__ TSDB_METER_METRIC ;

bool mgmtIsMetric(STabObj* pMeterObj) { return pMeterObj->meterType == TSDB_METER_METRIC; }
