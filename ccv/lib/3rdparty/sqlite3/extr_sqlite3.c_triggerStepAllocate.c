
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3 ;
struct TYPE_6__ {char* zTarget; int zSpan; int op; } ;
typedef TYPE_1__ TriggerStep ;
struct TYPE_7__ {scalar_t__ n; int z; } ;
typedef TYPE_2__ Token ;


 int memcpy (char*,int ,scalar_t__) ;
 TYPE_1__* sqlite3DbMallocZero (int *,scalar_t__) ;
 int sqlite3Dequote (char*) ;
 int triggerSpanDup (int *,char const*,char const*) ;

__attribute__((used)) static TriggerStep *triggerStepAllocate(
  sqlite3 *db,
  u8 op,
  Token *pName,
  const char *zStart,
  const char *zEnd
){
  TriggerStep *pTriggerStep;

  pTriggerStep = sqlite3DbMallocZero(db, sizeof(TriggerStep) + pName->n + 1);
  if( pTriggerStep ){
    char *z = (char*)&pTriggerStep[1];
    memcpy(z, pName->z, pName->n);
    sqlite3Dequote(z);
    pTriggerStep->zTarget = z;
    pTriggerStep->op = op;
    pTriggerStep->zSpan = triggerSpanDup(db, zStart, zEnd);
  }
  return pTriggerStep;
}
