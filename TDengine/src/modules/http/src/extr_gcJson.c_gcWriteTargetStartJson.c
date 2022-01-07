
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonBuf ;


 int JsonArrStt ;
 int JsonObjStt ;
 int httpJsonItemToken (int *) ;
 int httpJsonPair (int *,char*,int,char*,int) ;
 int httpJsonPairHead (int *,char*,int) ;
 int httpJsonToken (int *,int ) ;
 scalar_t__ strlen (char*) ;

void gcWriteTargetStartJson(JsonBuf *jsonBuf, char *refId, char *target) {
  if (strlen(target) == 0) {
    target = refId;
  }


  httpJsonItemToken(jsonBuf);
  httpJsonToken(jsonBuf, JsonObjStt);


  httpJsonPair(jsonBuf, "refId", 5, refId, (int)strlen(refId));
  httpJsonPair(jsonBuf, "target", 6, target, (int)strlen(target));


  httpJsonPairHead(jsonBuf, "datapoints", 10);


  httpJsonToken(jsonBuf, JsonArrStt);
}
