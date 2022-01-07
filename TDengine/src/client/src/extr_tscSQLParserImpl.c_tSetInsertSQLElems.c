
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tSQLExprListList ;
struct TYPE_6__ {int * pValue; int name; } ;
struct TYPE_5__ {int sqlType; TYPE_2__* pInsertInfo; } ;
typedef TYPE_1__ SSqlInfo ;
typedef int SSQLToken ;
typedef TYPE_2__ SInsertSQL ;


 int TSQL_INSERT ;
 TYPE_2__* calloc (int,int) ;

void tSetInsertSQLElems(SSqlInfo *pInfo, SSQLToken *pName, tSQLExprListList *pList) {
  SInsertSQL *pInsert = calloc(1, sizeof(SInsertSQL));

  pInsert->name = *pName;
  pInsert->pValue = pList;

  pInfo->pInsertInfo = pInsert;
  pInfo->sqlType = TSQL_INSERT;
}
