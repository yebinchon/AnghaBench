
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cfgType; } ;
typedef TYPE_1__ SGlobalConfig ;


 int TSDB_CFG_CTYPE_B_CLUSTER ;
 int TSDB_CFG_CTYPE_B_NOT_PRINT ;

bool mgmtCheckConfigShow(SGlobalConfig *cfg) {
  if (cfg->cfgType & TSDB_CFG_CTYPE_B_CLUSTER)
    return 0;
  if (cfg->cfgType & TSDB_CFG_CTYPE_B_NOT_PRINT)
    return 0;
  return 1;
}
