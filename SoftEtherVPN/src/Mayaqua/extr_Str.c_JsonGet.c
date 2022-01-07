
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_VALUE ;
typedef int JSON_OBJECT ;


 int StrLen (char*) ;
 int * json_object_nget_value (int *,char*,int ) ;

JSON_VALUE * JsonGet(JSON_OBJECT *object, char *name) {
 if (object == ((void*)0) || name == ((void*)0)) {
  return ((void*)0);
 }
 return json_object_nget_value(object, name, StrLen(name));
}
