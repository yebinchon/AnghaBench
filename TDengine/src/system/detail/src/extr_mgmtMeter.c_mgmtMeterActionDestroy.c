
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STabObj ;


 int mgmtDestroyMeter (int *) ;

void *mgmtMeterActionDestroy(void *row, char *str, int size, int *ssize) {
  STabObj *pMeter = (STabObj *)row;
  mgmtDestroyMeter(pMeter);
  return ((void*)0);
}
