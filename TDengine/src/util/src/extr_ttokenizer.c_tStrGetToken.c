
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef size_t int32_t ;
struct TYPE_3__ {size_t n; size_t type; char* z; int member_0; } ;
typedef TYPE_1__ SSQLToken ;


 size_t TK_FLOAT ;
 scalar_t__ TK_ID ;
 scalar_t__ TK_ILLEGAL ;
 size_t TK_INTEGER ;
 scalar_t__ TK_MINUS ;
 scalar_t__ TK_PLUS ;
 scalar_t__ TK_SEMI ;
 scalar_t__ TK_STRING ;
 void* tSQLGetToken (char*,size_t*) ;

SSQLToken tStrGetToken(char* str, int32_t* i, bool isPrevOptr, uint32_t numOfIgnoreToken, uint32_t* ignoreTokenTypes) {
  SSQLToken t0 = {0};


  if (str[*i] == 0) {
    t0.n = 0;
    return t0;
  }


  while (1) {
    *i += t0.n;

    bool hasComma = 0;
    while ((str[*i] == ' ' || str[*i] == '\n' || str[*i] == '\r' || str[*i] == '\t' || str[*i] == '\f')
        || str[*i] == ',') {
      if (str[*i] == ',') {
        if (0 == hasComma) {
          hasComma = 1;
        } else {
          t0.n = 0;
          return t0;
        }
      }
      (*i)++;
    }

    t0.n = tSQLGetToken(&str[*i], &t0.type);

    bool ignoreFlag = 0;
    for (uint32_t k = 0; k < numOfIgnoreToken; k++) {
      if (t0.type == ignoreTokenTypes[k]) {
        ignoreFlag = 1;
        break;
      }
    }

    if (!ignoreFlag) {
      break;
    }
  }

  if (t0.type == TK_SEMI) {
    t0.n = 0;
    return t0;
  }

  uint32_t type = 0;
  int32_t len;


  if ('.' == str[*i + t0.n]) {
    len = tSQLGetToken(&str[*i + t0.n + 1], &type);


    if ((TK_STRING != t0.type) && (TK_ID != t0.type)) {
      t0.type = TK_ILLEGAL;
      t0.n = 0;

      return t0;
    }

    t0.n += len + 1;

  } else {

    if ((isPrevOptr) && (t0.type == TK_MINUS || t0.type == TK_PLUS)) {
      len = tSQLGetToken(&str[*i + t0.n], &type);
      if (type == TK_INTEGER || type == TK_FLOAT) {
        t0.type = type;
        t0.n += len;
      }
    }
  }

  t0.z = str + (*i);
  *i += t0.n;

  return t0;
}
