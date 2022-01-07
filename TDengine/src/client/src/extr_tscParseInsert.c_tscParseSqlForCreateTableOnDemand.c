
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_16__ ;


typedef int uint32_t ;
typedef scalar_t__ int32_t ;
struct TYPE_28__ {int name; TYPE_16__* pMeterMeta; } ;
struct TYPE_27__ {scalar_t__ type; char* z; scalar_t__ n; } ;
struct TYPE_26__ {scalar_t__ type; scalar_t__ bytes; } ;
struct TYPE_25__ {scalar_t__ payload; } ;
struct TYPE_24__ {TYPE_3__ cmd; } ;
struct TYPE_23__ {char* data; int name; } ;
struct TYPE_22__ {scalar_t__ numOfTags; int precision; } ;
typedef TYPE_1__ STagData ;
typedef TYPE_2__ SSqlObj ;
typedef TYPE_3__ SSqlCmd ;
typedef TYPE_4__ SSchema ;
typedef TYPE_5__ SSQLToken ;
typedef TYPE_6__ SMeterMetaInfo ;


 scalar_t__ TK_LP ;
 scalar_t__ TK_RP ;
 scalar_t__ TK_STRING ;
 scalar_t__ TK_TAGS ;
 scalar_t__ TK_USING ;
 scalar_t__ TSDB_CODE_INVALID_SQL ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 scalar_t__ TSDB_DATA_TYPE_BINARY ;
 scalar_t__ TSDB_DATA_TYPE_NCHAR ;
 int TSDB_METER_ID_LEN ;
 int UTIL_METER_IS_METRIC (TYPE_6__*) ;
 int memmove (char*,char*,scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;
 int setErrMsg (scalar_t__,char*) ;
 scalar_t__ setMeterID (TYPE_2__*,TYPE_5__*,int ) ;
 int strcpy (scalar_t__,char*) ;
 int strncpy (int ,int ,int ) ;
 TYPE_5__ tStrGetToken (char*,scalar_t__*,int,int,int*) ;
 TYPE_4__* tsGetTagSchema (TYPE_16__*) ;
 scalar_t__ tsParseOneColumnData (TYPE_4__*,TYPE_5__*,char*,scalar_t__,char**,int,int ) ;
 scalar_t__ tscGetMeterMeta (TYPE_2__*,int ,int ) ;
 scalar_t__ tscGetMeterMetaEx (TYPE_2__*,int ,int) ;
 TYPE_6__* tscGetMeterMetaInfo (TYPE_3__*,int ) ;
 scalar_t__ tscValidateName (TYPE_5__*) ;

__attribute__((used)) static int32_t tscParseSqlForCreateTableOnDemand(char **sqlstr, SSqlObj *pSql) {
  int32_t index = 0;
  SSQLToken sToken;
  SSQLToken tableToken;
  int32_t code = TSDB_CODE_SUCCESS;

  SSqlCmd * pCmd = &pSql->cmd;
  SMeterMetaInfo *pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);

  char *sql = *sqlstr;

  index = 0;
  tableToken = tStrGetToken(sql, &index, 0, 0, ((void*)0));
  sql += index;

  char *cstart = ((void*)0);
  char *cend = ((void*)0);


  index = 0;
  sToken = tStrGetToken(sql, &index, 0, 0, ((void*)0));
  sql += index;

  int32_t numOfColList = 0;
  bool createTable = 0;

  if (sToken.type == TK_LP) {
    cstart = &sToken.z[0];
    index = 0;
    while (1) {
      sToken = tStrGetToken(sql, &index, 0, 0, ((void*)0));
      if (sToken.type == TK_RP) {
        cend = &sToken.z[0];
        break;
      }

      ++numOfColList;
    }

    sToken = tStrGetToken(sql, &index, 0, 0, ((void*)0));
    sql += index;
  }

  if (numOfColList == 0 && cstart != ((void*)0)) {
    return TSDB_CODE_INVALID_SQL;
  }

  if (sToken.type == TK_USING) {

    index = 0;
    sToken = tStrGetToken(sql, &index, 0, 0, ((void*)0));
    sql += index;

    STagData *pTag = (STagData *)pCmd->payload;
    memset(pTag, 0, sizeof(STagData));
    setMeterID(pSql, &sToken, 0);

    strncpy(pTag->name, pMeterMetaInfo->name, TSDB_METER_ID_LEN);
    code = tscGetMeterMeta(pSql, pTag->name, 0);
    if (code != TSDB_CODE_SUCCESS) {
      return code;
    }

    if (!UTIL_METER_IS_METRIC(pMeterMetaInfo)) {
      strcpy(pCmd->payload, "create table only from super table is allowed");
      return TSDB_CODE_INVALID_SQL;
    }

    char * tagVal = pTag->data;
    SSchema *pTagSchema = tsGetTagSchema(pMeterMetaInfo->pMeterMeta);

    index = 0;
    sToken = tStrGetToken(sql, &index, 0, 0, ((void*)0));
    sql += index;
    if (sToken.type != TK_TAGS) {
      setErrMsg(pCmd->payload, sql);
      return TSDB_CODE_INVALID_SQL;
    }

    int32_t numOfTagValues = 0;
    uint32_t ignoreTokenTypes = TK_LP;
    uint32_t numOfIgnoreToken = 1;
    while (1) {
      index = 0;
      sToken = tStrGetToken(sql, &index, 1, numOfIgnoreToken, &ignoreTokenTypes);
      sql += index;
      if (sToken.n == 0) {
        break;
      } else if (sToken.type == TK_RP) {
        break;
      }


      if (TK_STRING == sToken.type) {
        sToken.z++;
        sToken.n -= 2;
      }

      code = tsParseOneColumnData(&pTagSchema[numOfTagValues], &sToken, tagVal, pCmd->payload, &sql, 0,
                                  pMeterMetaInfo->pMeterMeta->precision);
      if (code != TSDB_CODE_SUCCESS) {
        setErrMsg(pCmd->payload, sql);
        return TSDB_CODE_INVALID_SQL;
      }

      if ((pTagSchema[numOfTagValues].type == TSDB_DATA_TYPE_BINARY ||
           pTagSchema[numOfTagValues].type == TSDB_DATA_TYPE_NCHAR) &&
          sToken.n > pTagSchema[numOfTagValues].bytes) {
        strcpy(pCmd->payload, "tag value too long");
        return TSDB_CODE_INVALID_SQL;
      }

      tagVal += pTagSchema[numOfTagValues++].bytes;
    }

    if (numOfTagValues != pMeterMetaInfo->pMeterMeta->numOfTags) {
      setErrMsg(pCmd->payload, sql);
      return TSDB_CODE_INVALID_SQL;
    }

    if (tscValidateName(&tableToken) != TSDB_CODE_SUCCESS) {
      setErrMsg(pCmd->payload, sql);
      return TSDB_CODE_INVALID_SQL;
    }

    int32_t ret = setMeterID(pSql, &tableToken, 0);
    if (ret != TSDB_CODE_SUCCESS) {
      return ret;
    }

    createTable = 1;
    code = tscGetMeterMetaEx(pSql, pMeterMetaInfo->name, 1);
  } else {
    if (cstart != ((void*)0)) {
      sql = cstart;
    } else {
      sql = sToken.z;
    }
    code = tscGetMeterMeta(pSql, pMeterMetaInfo->name, 0);
  }

  int32_t len = cend - cstart + 1;
  if (cstart != ((void*)0) && createTable == 1) {

    memmove(sql - len, cstart, len);
    *sqlstr = sql - len;
  } else {
    *sqlstr = sql;
  }

  return code;
}
