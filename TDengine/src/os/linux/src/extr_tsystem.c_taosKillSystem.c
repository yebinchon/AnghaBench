
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kill (int ,int) ;
 int pPrint (char*) ;
 int tsProcId ;

void taosKillSystem() {

  pPrint("taosd will shut down soon");
  kill(tsProcId, 2);
}
