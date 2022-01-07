
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ command; } ;
typedef TYPE_1__ SSqlCmd ;


 scalar_t__ TSDB_SQL_INSERT ;
 int taosMsleep (int) ;

__attribute__((used)) static void tscWaitingForCreateTable(SSqlCmd *pCmd) {
  if (pCmd->command == TSDB_SQL_INSERT) {
    taosMsleep(50);
  }
}
