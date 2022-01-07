
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config; } ;
typedef int SMgmtObj ;
typedef TYPE_1__ SCfgMsg ;


 int TSDB_MSG_TYPE_CFG_PNODE_RSP ;
 int taosSendSimpleRspToMnode (int *,int ,int) ;
 int tsCfgDynamicOptions (int ) ;

int vnodeProcessCfgDnodeRequest(char *cont, int contLen, SMgmtObj *pMgmtObj) {
  SCfgMsg *pCfg = (SCfgMsg *)cont;

  int code = tsCfgDynamicOptions(pCfg->config);

  taosSendSimpleRspToMnode(pMgmtObj, TSDB_MSG_TYPE_CFG_PNODE_RSP, code);

  return 0;
}
