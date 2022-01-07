
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int Table ;
struct TYPE_8__ {TYPE_1__* pFrom; struct TYPE_8__* pNextTo; } ;
struct TYPE_7__ {int db; } ;
struct TYPE_6__ {int zName; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ FKey ;


 TYPE_3__* sqlite3FkReferences (int *) ;
 char* whereOrName (int ,char*,int ) ;

__attribute__((used)) static char *whereForeignKeys(Parse *pParse, Table *pTab){
  FKey *p;
  char *zWhere = 0;
  for(p=sqlite3FkReferences(pTab); p; p=p->pNextTo){
    zWhere = whereOrName(pParse->db, zWhere, p->pFrom->zName);
  }
  return zWhere;
}
