
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_OBJECT ;


 int JsonGet (int *,char*) ;
 int JsonValueGetBool (int ) ;

bool JsonGetBool(JSON_OBJECT *object, char *name) {
 return JsonValueGetBool(JsonGet(object, name));
}
