
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_OBJECT ;


 int JsonDotGet (int *,char*) ;
 char* JsonValueGetStr (int ) ;

char * JsonDotGetStr(JSON_OBJECT *object, char *name) {
 return JsonValueGetStr(JsonDotGet(object, name));
}
