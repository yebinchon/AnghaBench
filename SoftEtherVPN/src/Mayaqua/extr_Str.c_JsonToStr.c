
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_VALUE ;


 char* JsonSerializeToStringPretty (int *) ;

char *JsonToStr(JSON_VALUE *v)
{
 return JsonSerializeToStringPretty(v);
}
