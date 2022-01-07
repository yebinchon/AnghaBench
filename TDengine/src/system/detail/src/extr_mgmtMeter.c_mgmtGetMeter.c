
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STabObj ;


 int meterSdb ;
 scalar_t__ sdbGetRow (int ,char*) ;

STabObj *mgmtGetMeter(char *meterId) { return (STabObj *)sdbGetRow(meterSdb, meterId); }
