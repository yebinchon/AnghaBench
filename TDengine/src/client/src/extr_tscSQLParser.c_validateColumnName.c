
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ int32_t ;
struct TYPE_3__ {char* z; scalar_t__ n; scalar_t__ type; } ;
typedef TYPE_1__ SSQLToken ;


 scalar_t__ TK_ID ;
 scalar_t__ TK_STRING ;
 scalar_t__ TSDB_CODE_INVALID_SQL ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 int isKeyWord (char*,scalar_t__) ;
 scalar_t__ isNumber (TYPE_1__*) ;
 int strdequote (char*) ;
 scalar_t__ strlen (char*) ;
 int strtrim (char*) ;
 void* tSQLGetToken (char*,scalar_t__*) ;

int32_t validateColumnName(char* name) {
  bool ret = isKeyWord(name, strlen(name));
  if (ret) {
    return TSDB_CODE_INVALID_SQL;
  }

  SSQLToken token = {.z = name};
  token.n = tSQLGetToken(name, &token.type);

  if (token.type != TK_STRING && token.type != TK_ID) {
    return TSDB_CODE_INVALID_SQL;
  }

  if (token.type == TK_STRING) {
    strdequote(token.z);
    strtrim(token.z);
    token.n = (uint32_t)strlen(token.z);

    int32_t k = tSQLGetToken(token.z, &token.type);
    if (k != token.n) {
      return TSDB_CODE_INVALID_SQL;
    }

    return validateColumnName(token.z);
  } else {
    if (isNumber(&token)) {
      return TSDB_CODE_INVALID_SQL;
    }
  }

  return TSDB_CODE_SUCCESS;
}
