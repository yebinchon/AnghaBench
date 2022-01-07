
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACK ;
typedef int JSON_VALUE ;


 int JsonFree (int *) ;
 char* JsonToStr (int *) ;
 int * PackToJson (int *) ;

char *PackToJsonStr(PACK *p)
{
 char *ret;
 JSON_VALUE *json = PackToJson(p);

 ret = JsonToStr(json);

 JsonFree(json);

 return ret;
}
