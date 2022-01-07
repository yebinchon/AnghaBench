
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_6__ {int cond; } ;
struct TYPE_8__ {size_t numOfTagCond; TYPE_2__* cond; TYPE_1__ tbnameCond; } ;
struct TYPE_7__ {int cond; } ;
typedef TYPE_3__ STagCond ;


 int SStringFree (int *) ;
 int memset (TYPE_3__*,int ,int) ;

void tscTagCondRelease(STagCond* pCond) {
  SStringFree(&pCond->tbnameCond.cond);

  for (int32_t i = 0; i < pCond->numOfTagCond; ++i) {
    SStringFree(&pCond->cond[i].cond);
  }

  memset(pCond, 0, sizeof(STagCond));
}
