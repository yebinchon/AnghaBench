
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_OBJECT ;


 int JsonDotGet (int *,char*) ;
 int JsonValueGetBool (int ) ;

bool JsonDotGetBool(JSON_OBJECT *object, char *name) {
 return JsonValueGetBool(JsonDotGet(object, name));
}
