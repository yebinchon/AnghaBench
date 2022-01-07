
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_9__ {int payloadLen; int payload; } ;
struct TYPE_8__ {TYPE_2__* pSql; } ;
struct TYPE_6__ {int code; } ;
struct TYPE_7__ {TYPE_1__ res; TYPE_4__ cmd; } ;
typedef TYPE_3__ STscObj ;
typedef TYPE_4__ SSqlCmd ;


 int strncpy (int ,char*,int ) ;

__attribute__((used)) static void setErrorInfo(STscObj* pObj, int32_t code, char* info) {
  if (pObj == ((void*)0)) {
    return;
  }

  SSqlCmd* pCmd = &pObj->pSql->cmd;

  pObj->pSql->res.code = code;
  strncpy(pCmd->payload, info, pCmd->payloadLen);
}
