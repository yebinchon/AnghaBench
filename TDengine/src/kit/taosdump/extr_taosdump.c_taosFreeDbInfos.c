
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ***** dbInfos ;
 int tfree (int *****) ;
 int tsMaxDbs ;

void taosFreeDbInfos() {
  if (dbInfos == ((void*)0)) return;
  for (int i = 0; i < tsMaxDbs; i++) tfree(dbInfos[i]);
  tfree(dbInfos);
}
