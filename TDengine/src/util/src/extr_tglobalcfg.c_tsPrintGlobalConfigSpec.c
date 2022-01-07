
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dataDir ;
 int pPrint (char*,int ) ;

void tsPrintGlobalConfigSpec() {
  pPrint(" dataDir:                %s", dataDir);
}
