
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ int16_t ;
struct TYPE_4__ {scalar_t__ type; char* z; int n; } ;
typedef TYPE_1__ SSQLToken ;


 scalar_t__ TK_INTEGER ;
 scalar_t__ TK_MINUS ;
 scalar_t__ TK_NOW ;
 scalar_t__ TK_PLUS ;
 int TSDB_CODE_INVALID_SQL ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 scalar_t__ TSDB_TIME_PRECISION_MILLI ;
 scalar_t__ getTimestampInUsFromStr (char*,int,int*) ;
 int str2int64 (char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 TYPE_1__ tStrGetToken (char*,scalar_t__*,int,int ,int *) ;
 int taosGetTimestamp (scalar_t__) ;
 scalar_t__ taosParseTime (char*,int*,int,scalar_t__) ;

int tsParseTime(SSQLToken *pToken, int64_t *time, char **next, char *error, int16_t timePrec) {
  char * token;
  int tokenlen;
  int32_t index = 0;
  SSQLToken sToken;
  int64_t interval;
  int64_t useconds = 0;
  char * pTokenEnd = *next;

  index = 0;

  if (pToken->type == TK_NOW) {
    useconds = taosGetTimestamp(timePrec);
  } else if (strncmp(pToken->z, "0", 1) == 0 && pToken->n == 1) {

  } else if (pToken->type == TK_INTEGER) {
    useconds = str2int64(pToken->z);
  } else {

    if (taosParseTime(pToken->z, time, pToken->n, timePrec) != TSDB_CODE_SUCCESS) {
      return TSDB_CODE_INVALID_SQL;
    }

    return TSDB_CODE_SUCCESS;
  }

  for (int k = pToken->n; pToken->z[k] != '\0'; k++) {
    if (pToken->z[k] == ' ' || pToken->z[k] == '\t') continue;
    if (pToken->z[k] == ',') {
      *next = pTokenEnd;
      *time = useconds;
      return 0;
    }

    break;
  }





  SSQLToken valueToken;
  index = 0;
  sToken = tStrGetToken(pTokenEnd, &index, 0, 0, ((void*)0));
  pTokenEnd += index;
  if (sToken.type == TK_MINUS || sToken.type == TK_PLUS) {
    index = 0;
    valueToken = tStrGetToken(pTokenEnd, &index, 0, 0, ((void*)0));
    pTokenEnd += index;
    if (valueToken.n < 2) {
      strcpy(error, "value is expected");
      return TSDB_CODE_INVALID_SQL;
    }

    if (getTimestampInUsFromStr(valueToken.z, valueToken.n, &interval) != TSDB_CODE_SUCCESS) {
      return TSDB_CODE_INVALID_SQL;
    }
    if (timePrec == TSDB_TIME_PRECISION_MILLI) {
      interval /= 1000;
    }

    if (sToken.type == TK_PLUS) {
      useconds += interval;
    } else {
      useconds = (useconds >= interval) ? useconds - interval : 0;
    }

    *next = pTokenEnd;
  }

  *time = useconds;
  return TSDB_CODE_SUCCESS;
}
