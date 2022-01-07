
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 scalar_t__ calloc (size_t,int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (char*,int,size_t,int *) ;
 int free (char*) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int httpError (char*,char const*) ;
 int httpPrint (char*,char const*,...) ;
 int rewind (int *) ;
 int tgParseSchema (char*,char const*) ;

int tgReadSchema(const char *fileName) {
  FILE *fp = fopen(fileName, "r");
  if (fp == ((void*)0)) {
    return -1;
  }

  httpPrint("open telegraf schema file:%s success", fileName);
  fseek(fp, 0, SEEK_END);
  size_t contentSize = (size_t)ftell(fp);
  rewind(fp);
  char *content = (char *)calloc(contentSize * sizeof(char) + 1, 1);
  size_t result = fread(content, 1, contentSize, fp);
  if (result != contentSize) {
    httpError("failed to read telegraf schema file:%s", fileName);
    return -1;
  }

  int schemaNum = tgParseSchema(content, fileName);

  free(content);
  fclose(fp);
  httpPrint("parse telegraf schema file:%s, schema size:%d", fileName, schemaNum);

  return schemaNum;
}
