
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int int8_t ;
typedef int int64_t ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_9__ {int type; int n; int z; } ;
struct TYPE_8__ {int type; int bytes; } ;
typedef TYPE_1__ SSchema ;
typedef TYPE_2__ SSQLToken ;


 double DBL_MAX ;
 scalar_t__ ERANGE ;
 float FLT_MAX ;
 double HUGE_VAL ;
 int INT16_MAX ;
 int INT16_MIN ;
 int INT32_MAX ;
 int INT32_MIN ;
 int INT64_MAX ;
 int INT64_MIN ;
 int INT8_MAX ;
 int INT8_MIN ;
 int INVALID_SQL_RET_MSG (char*,char*) ;
 int TK_BOOL ;
 int TK_FLOAT ;
 int TK_ILLEGAL ;
 int TK_INTEGER ;
 int TK_NULL ;
 int TK_STRING ;
 int TSDB_CODE_INVALID_SQL ;
 int TSDB_CODE_SUCCESS ;
 int TSDB_DATA_BIGINT_NULL ;
 char TSDB_DATA_BINARY_NULL ;
 int TSDB_DATA_BOOL_NULL ;
 int TSDB_DATA_DOUBLE_NULL ;
 int TSDB_DATA_FLOAT_NULL ;
 int TSDB_DATA_INT_NULL ;
 int TSDB_DATA_NCHAR_NULL ;
 int TSDB_DATA_NULL_STR_L ;
 int TSDB_DATA_SMALLINT_NULL ;
 int TSDB_DATA_TINYINT_NULL ;
 int TSDB_FALSE ;
 int TSDB_TRUE ;
 scalar_t__ errno ;
 int isinf (double) ;
 int isnan (double) ;
 int sprintf (char*,char*,char*) ;
 char* strerror (scalar_t__) ;
 int strncasecmp (int ,int ,int ) ;
 int strncmp (int ,char*,int ) ;
 int strncpy (char*,int ,int ) ;
 double strtod (int ,int *) ;
 int strtoll (int ,int *,int) ;
 int taosMbsToUcs4 (int ,int ,char*,int ) ;
 int tsParseTime (TYPE_2__*,int *,char**,char*,int ) ;
 int tscToDouble (TYPE_2__*,double*,char**) ;
 int tscToInteger (TYPE_2__*,int *,char**) ;

int32_t tsParseOneColumnData(SSchema *pSchema, SSQLToken *pToken, char *payload, char *msg, char **str, bool primaryKey,
                             int16_t timePrec) {
  int64_t iv;
  int32_t numType;
  char * endptr = ((void*)0);
  errno = 0;

  switch (pSchema->type) {
    case 135: {
      if ((pToken->type == TK_BOOL || pToken->type == TK_STRING) && (pToken->n != 0)) {
        if (strncmp(pToken->z, "true", pToken->n) == 0) {
          *(uint8_t *)payload = TSDB_TRUE;
        } else if (strncmp(pToken->z, "false", pToken->n) == 0) {
          *(uint8_t *)payload = TSDB_FALSE;
        } else if (strncasecmp(TSDB_DATA_NULL_STR_L, pToken->z, pToken->n) == 0) {
          *(uint8_t *)payload = TSDB_DATA_BOOL_NULL;
        } else {
          INVALID_SQL_RET_MSG(msg, "data is illegal");
        }
      } else if (pToken->type == TK_INTEGER) {
        iv = strtoll(pToken->z, ((void*)0), 10);
        *(uint8_t *)payload = (int8_t)((iv == 0) ? TSDB_FALSE : TSDB_TRUE);
      } else if (pToken->type == TK_FLOAT) {
        double dv = strtod(pToken->z, ((void*)0));
        *(uint8_t *)payload = (int8_t)((dv == 0) ? TSDB_FALSE : TSDB_TRUE);
      } else if (pToken->type == TK_NULL) {
        *(uint8_t *)payload = TSDB_DATA_BOOL_NULL;
      } else {
        INVALID_SQL_RET_MSG(msg, "data is illegal");
      }
      break;
    }
    case 128:
      if (pToken->type == TK_NULL) {
        *((int8_t *)payload) = TSDB_DATA_TINYINT_NULL;
      } else if ((pToken->type == TK_STRING) && (pToken->n != 0) &&
                 (strncasecmp(TSDB_DATA_NULL_STR_L, pToken->z, pToken->n) == 0)) {
        *((int8_t *)payload) = TSDB_DATA_TINYINT_NULL;
      } else {
        numType = tscToInteger(pToken, &iv, &endptr);
        if (errno == ERANGE || iv > INT8_MAX || iv <= INT8_MIN) {
          INVALID_SQL_RET_MSG(msg, "data is overflow");
        } else if (TK_ILLEGAL == numType) {
          INVALID_SQL_RET_MSG(msg, "data is illegal");
        }

        *((int8_t *)payload) = (int8_t)iv;
      }

      break;

    case 130:
      if (pToken->type == TK_NULL) {
        *((int16_t *)payload) = TSDB_DATA_SMALLINT_NULL;
      } else if ((pToken->type == TK_STRING) && (pToken->n != 0) &&
                 (strncasecmp(TSDB_DATA_NULL_STR_L, pToken->z, pToken->n) == 0)) {
        *((int16_t *)payload) = TSDB_DATA_SMALLINT_NULL;
      } else {
        numType = tscToInteger(pToken, &iv, &endptr);
        if (errno == ERANGE || iv > INT16_MAX || iv <= INT16_MIN) {
          INVALID_SQL_RET_MSG(msg, "data is overflow");
        } else if (TK_ILLEGAL == numType) {
          INVALID_SQL_RET_MSG(msg, "data is illegal");
        }

        *((int16_t *)payload) = (int16_t)iv;
      }
      break;

    case 132:
      if (pToken->type == TK_NULL) {
        *((int32_t *)payload) = TSDB_DATA_INT_NULL;
      } else if ((pToken->type == TK_STRING) && (pToken->n != 0) &&
                 (strncasecmp(TSDB_DATA_NULL_STR_L, pToken->z, pToken->n) == 0)) {
        *((int32_t *)payload) = TSDB_DATA_INT_NULL;
      } else {
        numType = tscToInteger(pToken, &iv, &endptr);
        if (errno == ERANGE || iv > INT32_MAX || iv <= INT32_MIN) {
          INVALID_SQL_RET_MSG(msg, "data is overflow");
        } else if (TK_ILLEGAL == numType) {
          INVALID_SQL_RET_MSG(msg, "data is illegal");
        }

        *((int32_t *)payload) = (int32_t)iv;
      }

      break;

    case 137:
      if (pToken->type == TK_NULL) {
        *((int64_t *)payload) = TSDB_DATA_BIGINT_NULL;
      } else if ((pToken->type == TK_STRING) && (pToken->n != 0) &&
                 (strncasecmp(TSDB_DATA_NULL_STR_L, pToken->z, pToken->n) == 0)) {
        *((int64_t *)payload) = TSDB_DATA_BIGINT_NULL;
      } else {
        numType = tscToInteger(pToken, &iv, &endptr);
        if (errno == ERANGE || iv > INT64_MAX || iv <= INT64_MIN) {
          INVALID_SQL_RET_MSG(msg, "data is overflow");
        } else if (TK_ILLEGAL == numType) {
          INVALID_SQL_RET_MSG(msg, "data is illegal");
        }

        *((int64_t *)payload) = iv;
      }
      break;

    case 133:
      if (pToken->type == TK_NULL) {
        *((int32_t *)payload) = TSDB_DATA_FLOAT_NULL;
      } else if ((pToken->type == TK_STRING) && (pToken->n != 0) &&
                 (strncasecmp(TSDB_DATA_NULL_STR_L, pToken->z, pToken->n) == 0)) {
        *((int32_t *)payload) = TSDB_DATA_FLOAT_NULL;
      } else {
        double dv;
        if (TK_ILLEGAL == tscToDouble(pToken, &dv, &endptr)) {
          INVALID_SQL_RET_MSG(msg, "data is illegal");
        }

        float fv = (float)dv;
        if (((dv == HUGE_VAL || dv == -HUGE_VAL) && errno == ERANGE) || (fv > FLT_MAX || fv < -FLT_MAX)) {
          INVALID_SQL_RET_MSG(msg, "data is illegal");
        }

        if (isinf(fv) || isnan(fv)) {
          *((int32_t *)payload) = TSDB_DATA_FLOAT_NULL;
        }

        *((float *)payload) = fv;
      }
      break;

    case 134:
      if (pToken->type == TK_NULL) {
        *((int64_t *)payload) = TSDB_DATA_DOUBLE_NULL;
      } else if ((pToken->type == TK_STRING) && (pToken->n != 0) &&
                 (strncasecmp(TSDB_DATA_NULL_STR_L, pToken->z, pToken->n) == 0)) {
        *((int64_t *)payload) = TSDB_DATA_DOUBLE_NULL;
      } else {
        double dv;
        if (TK_ILLEGAL == tscToDouble(pToken, &dv, &endptr)) {
          INVALID_SQL_RET_MSG(msg, "data is illegal");
        }

        if (((dv == HUGE_VAL || dv == -HUGE_VAL) && errno == ERANGE) || (dv > DBL_MAX || dv < -DBL_MAX)) {
          INVALID_SQL_RET_MSG(msg, "data is illegal");
        }

        if (isinf(dv) || isnan(dv)) {
          *((int64_t *)payload) = TSDB_DATA_DOUBLE_NULL;
        } else {
          *((double *)payload) = dv;
        }
      }
      break;

    case 136:

      if (pToken->type == TK_NULL) {
        *payload = TSDB_DATA_BINARY_NULL;
      } else {

        if (pToken->n > pSchema->bytes) {
          INVALID_SQL_RET_MSG(msg, "value too long");
        }
        strncpy(payload, pToken->z, pToken->n);
      }

      break;

    case 131:
      if (pToken->type == TK_NULL) {
        *(uint32_t *)payload = TSDB_DATA_NCHAR_NULL;
      } else {

        if (!taosMbsToUcs4(pToken->z, pToken->n, payload, pSchema->bytes)) {
          sprintf(msg, "%s", strerror(errno));
          return TSDB_CODE_INVALID_SQL;
        }
      }
      break;

    case 129: {
      if (pToken->type == TK_NULL) {
        if (primaryKey) {
          *((int64_t *)payload) = 0;
        } else {
          *((int64_t *)payload) = TSDB_DATA_BIGINT_NULL;
        }
      } else {
        int64_t temp;
        if (tsParseTime(pToken, &temp, str, msg, timePrec) != TSDB_CODE_SUCCESS) {
          return TSDB_CODE_INVALID_SQL;
        }
        *((int64_t *)payload) = temp;
      }

      break;
    }
  }

  return 0;
}
