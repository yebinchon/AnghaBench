
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int allocSize; scalar_t__* payload; } ;
typedef TYPE_1__ SSqlCmd ;


 int strncpy (scalar_t__*,char const*,int) ;

void setErrMsg(SSqlCmd* pCmd, const char* pzErrMsg) {
  strncpy(pCmd->payload, pzErrMsg, pCmd->allocSize);
  pCmd->payload[pCmd->allocSize - 1] = 0;
}
