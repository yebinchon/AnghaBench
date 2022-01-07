
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int tabFlags; } ;
typedef TYPE_1__ Table ;
struct TYPE_11__ {int iDb; int regCtr; TYPE_1__* pTab; struct TYPE_11__* pNext; } ;
struct TYPE_10__ {int nMem; TYPE_3__* pAinc; int db; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ AutoincInfo ;


 int TF_Autoincrement ;
 TYPE_3__* sqlite3DbMallocRaw (int ,int) ;
 TYPE_2__* sqlite3ParseToplevel (TYPE_2__*) ;

__attribute__((used)) static int autoIncBegin(
  Parse *pParse,
  int iDb,
  Table *pTab
){
  int memId = 0;
  if( pTab->tabFlags & TF_Autoincrement ){
    Parse *pToplevel = sqlite3ParseToplevel(pParse);
    AutoincInfo *pInfo;

    pInfo = pToplevel->pAinc;
    while( pInfo && pInfo->pTab!=pTab ){ pInfo = pInfo->pNext; }
    if( pInfo==0 ){
      pInfo = sqlite3DbMallocRaw(pParse->db, sizeof(*pInfo));
      if( pInfo==0 ) return 0;
      pInfo->pNext = pToplevel->pAinc;
      pToplevel->pAinc = pInfo;
      pInfo->pTab = pTab;
      pInfo->iDb = iDb;
      pToplevel->nMem++;
      pInfo->regCtr = ++pToplevel->nMem;
      pToplevel->nMem++;
    }
    memId = pInfo->regCtr;
  }
  return memId;
}
