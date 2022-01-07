
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
typedef TYPE_1__ SSqlCmd ;


 scalar_t__ QUERY_IS_STABLE_QUERY (int ) ;
 int tscFieldInfoCalOffset (TYPE_1__*) ;
 int tscFieldInfoUpdateOffset (TYPE_1__*) ;

void setColumnOffsetValueInResultset(SSqlCmd* pCmd) {
  if (QUERY_IS_STABLE_QUERY(pCmd->type)) {
    tscFieldInfoUpdateOffset(pCmd);
  } else {
    tscFieldInfoCalOffset(pCmd);
  }
}
