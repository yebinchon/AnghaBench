
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tVariant ;
struct TYPE_10__ {int colId; int nodeType; int * pVal; struct SSchema* pSchema; } ;
typedef TYPE_1__ tSQLSyntaxNode ;
struct SSchema {int colId; int name; int bytes; int type; } ;
typedef size_t int32_t ;
typedef int int16_t ;
struct TYPE_12__ {scalar_t__ type; size_t n; int z; } ;
struct TYPE_11__ {scalar_t__ colId; int name; } ;
typedef TYPE_2__ SSchema ;
typedef TYPE_3__ SSQLToken ;


 scalar_t__ TK_BOOL ;
 scalar_t__ TK_FLOAT ;
 scalar_t__ TK_ID ;
 scalar_t__ TK_INTEGER ;
 scalar_t__ TK_RP ;
 scalar_t__ TK_STRING ;
 scalar_t__ TK_TBNAME ;
 int TSDB_DATA_TYPE_BINARY ;
 int TSDB_METER_NAME_LEN ;
 int TSQL_NODE_COL ;
 int TSQL_NODE_VALUE ;
 int TSQL_TBNAME_L ;
 TYPE_1__* calloc (int,size_t) ;
 int memcpy (struct SSchema*,TYPE_2__*,int) ;
 int strcpy (int ,int ) ;
 size_t strlen (int ) ;
 scalar_t__ strncmp (int ,int ,size_t) ;
 int tVariantCreate (int *,TYPE_3__*) ;
 int toTSDBType (scalar_t__) ;

__attribute__((used)) static tSQLSyntaxNode *tSQLSyntaxNodeCreate(SSchema *pSchema, int32_t numOfCols, SSQLToken *pToken) {

  if (pToken->type == TK_RP || (pToken->type != TK_INTEGER && pToken->type != TK_FLOAT && pToken->type != TK_ID &&
                                pToken->type != TK_TBNAME && pToken->type != TK_STRING && pToken->type != TK_BOOL)) {
    return ((void*)0);
  }

  int32_t i = 0;
  size_t nodeSize = sizeof(tSQLSyntaxNode);
  tSQLSyntaxNode *pNode = ((void*)0);

  if (pToken->type == TK_ID || pToken->type == TK_TBNAME) {
    if (pToken->type == TK_ID) {
      do {
        size_t len = strlen(pSchema[i].name);
        if (strncmp(pToken->z, pSchema[i].name, pToken->n) == 0 && pToken->n == len) break;
      } while (++i < numOfCols);

      if (i == numOfCols) {
        return ((void*)0);
      }
    }

    nodeSize += sizeof(SSchema);

    pNode = calloc(1, nodeSize);
    pNode->pSchema = (struct SSchema *)((char *)pNode + sizeof(tSQLSyntaxNode));
    pNode->nodeType = TSQL_NODE_COL;

    if (pToken->type == TK_ID) {
      pNode->colId = (int16_t)pSchema[i].colId;
      memcpy(pNode->pSchema, &pSchema[i], sizeof(SSchema));
    } else {
      pNode->colId = -1;
      pNode->pSchema->type = TSDB_DATA_TYPE_BINARY;
      pNode->pSchema->bytes = TSDB_METER_NAME_LEN;
      strcpy(pNode->pSchema->name, TSQL_TBNAME_L);
      pNode->pSchema->colId = -1;
    }

  } else {
    nodeSize += sizeof(tVariant);
    pNode = calloc(1, nodeSize);
    pNode->pVal = (tVariant *)((char *)pNode + sizeof(tSQLSyntaxNode));

    toTSDBType(pToken->type);
    tVariantCreate(pNode->pVal, pToken);
    pNode->nodeType = TSQL_NODE_VALUE;
    pNode->colId = -1;
  }

  return pNode;
}
