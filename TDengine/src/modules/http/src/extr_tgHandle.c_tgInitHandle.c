
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HttpServer ;


 int DEFAULT_TELEGRAF_CFG ;
 char* configDir ;
 int httpAddMethod (int *,int *) ;
 int sprintf (char*,char*,char*) ;
 int tgDecodeMethod ;
 int tgFreeSchemas () ;
 scalar_t__ tgParseSchema (int ,char*) ;
 scalar_t__ tgReadSchema (char*) ;

void tgInitHandle(HttpServer *pServer) {
  char fileName[256] = {0};
  sprintf(fileName, "%s/taos.telegraf.cfg", configDir);
  if (tgReadSchema(fileName) <= 0) {
    tgFreeSchemas();
    if (tgParseSchema(DEFAULT_TELEGRAF_CFG, "default") <= 0) {
      tgFreeSchemas();
    }
  }

  httpAddMethod(pServer, &tgDecodeMethod);
}
