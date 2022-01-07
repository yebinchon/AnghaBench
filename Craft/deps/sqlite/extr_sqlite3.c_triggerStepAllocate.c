
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3 ;
struct TYPE_7__ {char* z; scalar_t__ n; } ;
struct TYPE_8__ {int op; TYPE_1__ target; } ;
typedef TYPE_2__ TriggerStep ;
struct TYPE_9__ {scalar_t__ n; int z; } ;
typedef TYPE_3__ Token ;


 int memcpy (char*,int ,scalar_t__) ;
 TYPE_2__* sqlite3DbMallocZero (int *,scalar_t__) ;

__attribute__((used)) static TriggerStep *triggerStepAllocate(
  sqlite3 *db,
  u8 op,
  Token *pName
){
  TriggerStep *pTriggerStep;

  pTriggerStep = sqlite3DbMallocZero(db, sizeof(TriggerStep) + pName->n);
  if( pTriggerStep ){
    char *z = (char*)&pTriggerStep[1];
    memcpy(z, pName->z, pName->n);
    pTriggerStep->target.z = z;
    pTriggerStep->target.n = pName->n;
    pTriggerStep->op = op;
  }
  return pTriggerStep;
}
