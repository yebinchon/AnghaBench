
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ xSelectCallback2; int xSelectCallback; TYPE_2__* pParse; int xExprCallback; } ;
typedef TYPE_1__ Walker ;
struct TYPE_6__ {int hasCompound; } ;
typedef int Select ;
typedef TYPE_2__ Parse ;


 scalar_t__ OK_IF_ALWAYS_TRUE (int ) ;
 int convertCompoundSelectToSubquery ;
 int selectExpander ;
 scalar_t__ selectPopWith ;
 int sqlite3ExprWalkNoop ;
 int sqlite3WalkSelect (TYPE_1__*,int *) ;

__attribute__((used)) static void sqlite3SelectExpand(Parse *pParse, Select *pSelect){
  Walker w;
  w.xExprCallback = sqlite3ExprWalkNoop;
  w.pParse = pParse;
  if( OK_IF_ALWAYS_TRUE(pParse->hasCompound) ){
    w.xSelectCallback = convertCompoundSelectToSubquery;
    w.xSelectCallback2 = 0;
    sqlite3WalkSelect(&w, pSelect);
  }
  w.xSelectCallback = selectExpander;
  w.xSelectCallback2 = selectPopWith;
  sqlite3WalkSelect(&w, pSelect);
}
