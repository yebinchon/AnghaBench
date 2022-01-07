
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonBuf ;


 int TSDB_CODE_DB_NOT_SELECTED ;
 int TSDB_CODE_INVALID_TABLE ;
 int httpJsonItemToken (int *) ;
 int httpJsonPair (int *,char*,int,char*,int) ;
 int httpJsonPairIntVal (int *,char*,int,int) ;
 scalar_t__ strlen (char*) ;
 char** tsError ;

void httpJsonPairStatus(JsonBuf* buf, int code) {
  if (code == 0) {
    httpJsonPair(buf, "status", 6, "succ", 4);
  } else {
    httpJsonPair(buf, "status", 6, "error", 5);
    httpJsonItemToken(buf);
    httpJsonPairIntVal(buf, "code", 4, code);
    if (code >= 0) {
      httpJsonItemToken(buf);
      if (code == TSDB_CODE_DB_NOT_SELECTED) {
        httpJsonPair(buf, "desc", 4, "failed to create database", 23);
      } else if (code == TSDB_CODE_INVALID_TABLE) {
        httpJsonPair(buf, "desc", 4, "failed to create table", 22);
      } else
        httpJsonPair(buf, "desc", 4, tsError[code], (int)strlen(tsError[code]));
    }
  }
}
