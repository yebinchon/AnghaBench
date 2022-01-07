
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_3__ {int explain; int iSelectId; int db; int * pVdbe; } ;
typedef TYPE_1__ Parse ;


 int OP_Explain ;
 int P4_DYNAMIC ;
 char* sqlite3MPrintf (int ,char*,char const*) ;
 int sqlite3VdbeAddOp4 (int *,int ,int ,int ,int ,char*,int ) ;

__attribute__((used)) static void explainTempTable(Parse *pParse, const char *zUsage){
  if( pParse->explain==2 ){
    Vdbe *v = pParse->pVdbe;
    char *zMsg = sqlite3MPrintf(pParse->db, "USE TEMP B-TREE FOR %s", zUsage);
    sqlite3VdbeAddOp4(v, OP_Explain, pParse->iSelectId, 0, 0, zMsg, P4_DYNAMIC);
  }
}
