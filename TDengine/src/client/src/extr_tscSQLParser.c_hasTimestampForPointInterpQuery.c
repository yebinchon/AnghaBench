
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ stime; scalar_t__ etime; } ;
typedef TYPE_1__ SSqlCmd ;


 int tscIsPointInterpQuery (TYPE_1__*) ;

bool hasTimestampForPointInterpQuery(SSqlCmd* pCmd) {
  if (!tscIsPointInterpQuery(pCmd)) {
    return 1;
  }

  return (pCmd->stime == pCmd->etime) && (pCmd->stime != 0);
}
