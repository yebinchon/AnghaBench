
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* db; } ;
struct TYPE_8__ {int selFlags; struct TYPE_8__* pNext; struct TYPE_8__* pPrior; } ;
struct TYPE_7__ {int* aLimit; } ;
typedef TYPE_2__ Select ;
typedef TYPE_3__ Parse ;


 int SF_Compound ;
 int SF_MultiValue ;
 size_t SQLITE_LIMIT_COMPOUND_SELECT ;
 int sqlite3ErrorMsg (TYPE_3__*,char*) ;

__attribute__((used)) static void parserDoubleLinkSelect(Parse *pParse, Select *p){
    if( p->pPrior ){
      Select *pNext = 0, *pLoop;
      int mxSelect, cnt = 0;
      for(pLoop=p; pLoop; pNext=pLoop, pLoop=pLoop->pPrior, cnt++){
        pLoop->pNext = pNext;
        pLoop->selFlags |= SF_Compound;
      }
      if( (p->selFlags & SF_MultiValue)==0 &&
        (mxSelect = pParse->db->aLimit[SQLITE_LIMIT_COMPOUND_SELECT])>0 &&
        cnt>mxSelect
      ){
        sqlite3ErrorMsg(pParse, "too many terms in compound SELECT");
      }
    }
  }
