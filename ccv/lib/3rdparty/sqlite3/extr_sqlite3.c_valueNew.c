
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct ValueNewStat4Ctx {int iVal; TYPE_2__** ppRec; int pParse; TYPE_4__* pIdx; } ;
struct TYPE_10__ {int * db; int flags; } ;
typedef TYPE_1__ sqlite3_value ;
typedef int sqlite3 ;
struct TYPE_11__ {int nField; TYPE_1__* aMem; TYPE_7__* pKeyInfo; } ;
typedef TYPE_2__ UnpackedRecord ;
struct TYPE_13__ {int nAllField; scalar_t__ enc; } ;
struct TYPE_12__ {int nColumn; } ;
typedef TYPE_1__ Mem ;
typedef TYPE_4__ Index ;


 scalar_t__ ENC (int *) ;
 int MEM_Null ;
 int ROUND8 (int) ;
 int UNUSED_PARAMETER (struct ValueNewStat4Ctx*) ;
 int assert (int) ;
 int sqlite3DbFreeNN (int *,TYPE_2__*) ;
 scalar_t__ sqlite3DbMallocZero (int *,int) ;
 TYPE_7__* sqlite3KeyInfoOfIndex (int ,TYPE_4__*) ;
 TYPE_1__* sqlite3ValueNew (int *) ;

__attribute__((used)) static sqlite3_value *valueNew(sqlite3 *db, struct ValueNewStat4Ctx *p){
  UNUSED_PARAMETER(p);

  return sqlite3ValueNew(db);
}
