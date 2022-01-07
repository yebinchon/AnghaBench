
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* pNode; } ;
typedef TYPE_3__ tSQLExprItem ;
struct TYPE_9__ {int n; int z; void* type; } ;
struct TYPE_7__ {int nLen; int pz; } ;
struct TYPE_6__ {scalar_t__ nSQLOptr; TYPE_2__ val; TYPE_4__ colInfo; } ;
typedef TYPE_4__ SSQLToken ;


 void* TK_ID ;
 scalar_t__ TK_STRING ;
 int strdequote (int ) ;

__attribute__((used)) static void extractColumnNameFromString(tSQLExprItem* pItem) {
  if (pItem->pNode->nSQLOptr == TK_STRING) {
    pItem->pNode->val.nLen = strdequote(pItem->pNode->val.pz);
    pItem->pNode->nSQLOptr = TK_ID;

    SSQLToken* pIdToken = &pItem->pNode->colInfo;
    pIdToken->type = TK_ID;
    pIdToken->z = pItem->pNode->val.pz;
    pIdToken->n = pItem->pNode->val.nLen;
  }
}
