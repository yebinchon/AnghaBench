
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int JSON_VALUE ;
typedef int JSON_OBJECT ;


 int * JsonGet (int *,char*) ;
 int * JsonValueGetObject (int ) ;
 int json_object_nget_value (int *,char*,int ) ;
 char* strchr (char*,char) ;

JSON_VALUE * JsonDotGet(JSON_OBJECT *object, char *name) {
 char *dot_position = strchr(name, '.');
 if (!dot_position) {
  return JsonGet(object, name);
 }
 object = JsonValueGetObject(json_object_nget_value(object, name, (UINT)(dot_position - name)));
 return JsonDotGet(object, dot_position + 1);
}
