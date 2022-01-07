
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_VALUE ;


 int * JsonParseString (char*) ;

JSON_VALUE *StrToJson(char *str)
{
 if (str == ((void*)0))
 {
  return ((void*)0);
 }

 return JsonParseString(str);
}
