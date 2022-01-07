
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STabObj ;


 int mgmtIsMetric (int *) ;

bool mgmtIsNormalMeter(STabObj* pMeterObj) { return !mgmtIsMetric(pMeterObj); }
