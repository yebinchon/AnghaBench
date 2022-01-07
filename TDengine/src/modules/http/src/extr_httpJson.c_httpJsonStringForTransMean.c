
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonBuf ;


 int JsonStrEnd ;
 int JsonStrStt ;
 int httpJsonItemToken (int *) ;
 int httpJsonPrint (int *,char*,int) ;
 int httpJsonToken (int *,int ) ;

void httpJsonStringForTransMean(JsonBuf* buf, char* sVal, int maxLen) {
  httpJsonItemToken(buf);
  httpJsonToken(buf, JsonStrStt);

  if (sVal != ((void*)0)) {

    char* lastPos = sVal;
    char* curPos = sVal;

    for (int i = 0; i < maxLen; ++i) {
      if (*curPos == 0) {
        break;
      }

      if (*curPos == '\"') {
        httpJsonPrint(buf, lastPos, (int)(curPos - lastPos));
        curPos++;
        lastPos = curPos;
        httpJsonPrint(buf, "\\\"", 2);
      } else if (*curPos == '\\') {
        httpJsonPrint(buf, lastPos, (int)(curPos - lastPos));
        curPos++;
        lastPos = curPos;
        httpJsonPrint(buf, "\\\\", 2);
      } else {
        curPos++;
      }
    }

    if (*lastPos) {
      httpJsonPrint(buf, lastPos, (int)(curPos - lastPos));
    }
  }

  httpJsonToken(buf, JsonStrEnd);
}
