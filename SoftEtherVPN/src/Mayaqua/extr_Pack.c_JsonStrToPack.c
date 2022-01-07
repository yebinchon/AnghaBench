
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACK ;
typedef int JSON_VALUE ;


 int JsonFree (int *) ;
 int * JsonToPack (int *) ;
 int * StrToJson (char*) ;

PACK *JsonStrToPack(char *str)
{
 JSON_VALUE *v = StrToJson(str);
 PACK *ret;

 if (v == ((void*)0))
 {
  return ((void*)0);
 }

 ret = JsonToPack(v);

 JsonFree(v);

 return ret;
}
