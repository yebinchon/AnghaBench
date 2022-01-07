
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cJSON ;


 int cJSON_Delete (int *) ;
 int * cJSON_GetArrayItem (int *,int) ;
 int cJSON_GetArraySize (int *) ;
 int * cJSON_GetObjectItem (int *,char*) ;
 int * cJSON_Parse (char*) ;
 int httpError (char*,char*,...) ;
 int tgInitSchemas (int) ;
 int tgParseSchemaMetric (int *) ;

int tgParseSchema(char *content, char*fileName) {
  cJSON *root = cJSON_Parse(content);
  if (root == ((void*)0)) {
    httpError("failed to parse telegraf schema file:%s, invalid json format, content:%s", fileName, content);
    return -1;
  }
  int size = 0;
  cJSON *metrics = cJSON_GetObjectItem(root, "metrics");
  if (metrics != ((void*)0)) {
    size = cJSON_GetArraySize(metrics);
    if (size <= 0) {
      httpError("failed to parse telegraf schema file:%s, metrics size is 0", fileName);
      cJSON_Delete(root);
      return -1;
    }

    tgInitSchemas(size);
    for (int i = 0; i < size; i++) {
      cJSON *metric = cJSON_GetArrayItem(metrics, i);
      if (metric != ((void*)0)) {
        tgParseSchemaMetric(metric);
      }
    }
  } else {
    size = 1;
    tgInitSchemas(size);
    tgParseSchemaMetric(root);
  }

  cJSON_Delete(root);
  return size;
}
