
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int8_t ;
struct TYPE_8__ {TYPE_3__* pSql; struct TYPE_8__* signature; } ;
struct TYPE_6__ {char* payload; } ;
struct TYPE_5__ {unsigned char code; } ;
struct TYPE_7__ {TYPE_2__ cmd; TYPE_1__ res; } ;
typedef int TAOS ;
typedef TYPE_4__ STscObj ;


 unsigned char TSDB_CODE_INVALID_SQL ;
 unsigned char TSDB_CODE_OTHERS ;
 size_t globalCode ;
 int snprintf (char*,int ,char*,char*) ;
 int strcpy (char*,char*) ;
 int tListLen (char*) ;
 char** tsError ;

char *taos_errstr(TAOS *taos) {
  STscObj * pObj = (STscObj *)taos;
  unsigned char code;
  char temp[256] = {0};

  if (pObj == ((void*)0) || pObj->signature != pObj) return tsError[globalCode];

  if ((int8_t)(pObj->pSql->res.code) == -1)
    code = TSDB_CODE_OTHERS;
  else
    code = pObj->pSql->res.code;

  if (code == TSDB_CODE_INVALID_SQL) {
    snprintf(temp, tListLen(temp), "invalid SQL: %s", pObj->pSql->cmd.payload);
    strcpy(pObj->pSql->cmd.payload, temp);
    return pObj->pSql->cmd.payload;
  } else {
    return tsError[code];
  }
}
