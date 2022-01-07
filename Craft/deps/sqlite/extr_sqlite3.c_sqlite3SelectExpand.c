
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int w ;
struct TYPE_4__ {int xSelectCallback; int * pParse; int xExprCallback; } ;
typedef TYPE_1__ Walker ;
typedef int Select ;
typedef int Parse ;


 int convertCompoundSelectToSubquery ;
 int exprWalkNoop ;
 int memset (TYPE_1__*,int ,int) ;
 int selectExpander ;
 int sqlite3WalkSelect (TYPE_1__*,int *) ;

__attribute__((used)) static void sqlite3SelectExpand(Parse *pParse, Select *pSelect){
  Walker w;
  memset(&w, 0, sizeof(w));
  w.xSelectCallback = convertCompoundSelectToSubquery;
  w.xExprCallback = exprWalkNoop;
  w.pParse = pParse;
  sqlite3WalkSelect(&w, pSelect);
  w.xSelectCallback = selectExpander;
  sqlite3WalkSelect(&w, pSelect);
}
