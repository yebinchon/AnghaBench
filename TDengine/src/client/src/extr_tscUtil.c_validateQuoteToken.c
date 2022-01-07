
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ int32_t ;
struct TYPE_4__ {scalar_t__ n; scalar_t__ type; int z; } ;
typedef TYPE_1__ SSQLToken ;


 scalar_t__ TK_ID ;
 scalar_t__ TK_STRING ;
 scalar_t__ TSDB_CODE_INVALID_SQL ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 scalar_t__ strdequote (int ) ;
 scalar_t__ strlen (int ) ;
 int strtrim (int ) ;
 scalar_t__ tSQLGetToken (int ,scalar_t__*) ;
 scalar_t__ tscValidateName (TYPE_1__*) ;

__attribute__((used)) static int32_t validateQuoteToken(SSQLToken* pToken) {
  pToken->n = strdequote(pToken->z);
  strtrim(pToken->z);
  pToken->n = (uint32_t)strlen(pToken->z);

  int32_t k = tSQLGetToken(pToken->z, &pToken->type);

  if (pToken->type == TK_STRING) {
    return tscValidateName(pToken);
  }

  if (k != pToken->n || pToken->type != TK_ID) {
    return TSDB_CODE_INVALID_SQL;
  }
  return TSDB_CODE_SUCCESS;
}
